<?php

namespace App\Http\Controllers\Community;

use App\Http\Controllers\Controller;
use App\Http\Requests\RareSearchFormRequest;
use App\Models\Community\RareValue\WebsiteRareValue;
use App\Models\Community\RareValue\WebsiteRareValueCategory;
use App\Models\Game\Furniture\Item;
use App\Models\Game\Furniture\ItemBase;
use App\Services\Community\RareValues\RareValueCategoriesService;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\View\View;

class WebsiteRareValuesController extends Controller
{
    public function __construct(private readonly RareValueCategoriesService $valueCategoriesService)
    {
    }

    public function index(): View
    {
        return view('rare-values', [
            'user' => Auth::user()?->load('permission:id,rank_name'),
            'categories' => $this->valueCategoriesService->fetchCategoriesByPriority(),
            'categoriesNav' => $this->valueCategoriesService->fetchAllCategories(),
        ]);
    }

    public function category(int $id): View|RedirectResponse
    {
        $category = $this->valueCategoriesService->fetchCategoryById($id);

        if (! $category) {
            return redirect()->back()->withErrors([
                'message' => __('The entered category does not exist'),
            ]);
        }

        return view('rare-values', [
            'user' => Auth::user()?->load('permission:id,rank_name'),
            'categories' => $category,
            'categoriesNav' =>  $this->valueCategoriesService->fetchAllCategories(),
        ]);
    }

    public function search(RareSearchFormRequest $request): View|RedirectResponse
    {
        $searchTerm = $request->input('search');

        $categories = $this->valueCategoriesService->searchCategories($searchTerm);

        if ($categories->isEmpty()) {
            return redirect()->back()->withErrors([
                'message' => __('It seems like there were no rares matching your search input'),
            ]);
        }

        return view('rare-values', [
            'user' => Auth::user()?->load('permission:id,rank_name'),
            'categories' => $categories,
            'categoriesNav' => WebsiteRareValueCategory::has('furniture')->get(),
        ]);
    }

    public function add(): View|RedirectResponse
    {
        return view('rare-add', [
            'categories' => $this->valueCategoriesService->fetchCategoriesByPriority()
        ]);
    }
    public function store(FormRequest $request): View|RedirectResponse
    {
        $data = $request->validate([
            'item_id' => 'nullable|integer',
            'name' => 'required|string|max:255',
            'category_id'=> 'required|integer',
            'credit_value' => 'nullable|integer|min:0',
            'currency_value' => 'nullable|integer|min:0',
            'currency_type' => 'nullable|in:0,5',
            'photo' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',

        ]);
        $data['currency_type'] = $data['currency_type'] ?? 0;
        $itemBase = null;
        if (!empty($data['item_id'])) {
            $itemBase = ItemBase::find($data['item_id']);
        }
        // Se c'è una foto, convertila in base64
        $photoBase64 = null;
        if ($request->hasFile('photo')) {
            $photoBase64 = base64_encode(file_get_contents($request->file('photo')->getRealPath()));
        }

        WebsiteRareValue::create([
            'item_id' => $data['item_id'] ?? null,
            'name' => $data['name'] ?? ($itemBase?->name ?? 'Sconosciuto'),
            'credit_value' => $data['credit_value'] ?? 0,
            'category_id' => $data['category_id'] ?? 0,
            'currency_value' => $data['currency_value'] ?? 0,
            'currency_type' => $data['currency_type'] ?? null,
            'furniture_icon' => ($itemBase?->item_name ? str_replace('.', '_', $itemBase->item_name) . '_icon.png' : 'null'),
            'photo_base64' => $photoBase64,

        ]);

        return redirect()->route('values.index')->with('success', 'Raro aggiunto con successo!');
    }

    public function value(WebsiteRareValue $value): View
    {
        $items = Item::with(['user:id,username,look'])
            ->where('item_id', $value->item_id)
            ->get();

        $itemsPerUser = $items->groupBy('user_id')->map(function ($group) {
            return [
                'user' => $group->first()->user,
                'item_count' => $group->count(),
            ];
        });

        if ((bool) setting('enable_caching')) {
            Cache::remember('allItems_'.$value->id, setting('cache_timer'), function () use ($items) {
                return $items;
            });
        }

        return view('value', [
            'value' => $value,
            'items' => $itemsPerUser,
        ]);
    }

    public function delete( $id)
    {
        $rare = WebsiteRareValue::findOrFail($id);
        $rare->delete();
        return redirect()->route('values.index')->with('success', 'Raro eliminato con successo!');
    }

}
