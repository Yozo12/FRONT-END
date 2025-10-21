@props(['rare', 'user'])

    {{-- Icona sopra --}}
    @if($rare->photo_base64)
    <div class="p-3 rounded bg-gray-200 dark:bg-gray-700 flex flex-col items-center gap-y-4 overflow-hidden text-center">
    <div>
        <img src="data:image/png;base64,{{ $rare->photo_base64 }}" alt="{{ $rare->name }}" class="w-[233px] h-[249px] object-contain">
    </div>
    @else
    <div class="p-3 rounded bg-gray-200 dark:bg-gray-700 flex flex-col items-center gap-y-4 overflow-hidden text-center">

    <div class="w-20 h-20 overflow-hidden  flex items-center justify-center">
        <img src="{{ sprintf('%s/%s', setting('furniture_icons_path'), $rare->furniture_icon) }}" alt="{{ $rare->name }}" class="w-full h-full object-contain">
    </div>
    @endif
    {{-- Nome --}}
    <div class="font-bold text-gray-700 dark:text-gray-200 truncate flex flex-col items-center gap-y-1">
        @if($rare->item_id)
        <a href="{{ route('values.value', $rare) }}" class="underline">
            {{ strLimit($rare->name, 15) }}
        </a>
        @else
        {{ strLimit($rare->name, 20) }}
        @endif

<!--        @if($rare->category_id==1)-->
<!--        <img class="w-4 h-4" src="{{ asset('/assets/images/icons/ltd.png') }}" alt="Limited">-->
<!--        @endif-->
    </div>

    {{-- Blocchi valori sotto --}}
    <div class="flex flex-col gap-y-2 w-full">
        {{-- Crediti --}}
        @if($rare->credit_value > 0)
        <div class="bg-yellow-400 rounded h-[40px] flex items-center justify-between px-4">
            <div class="flex items-center gap-x-2">
                <img src="{{ asset('assets/images/icons/currency/credits.png') }}?v=3" class="w-6 h-6" alt="Credits">
                <span class="font-semibold">{{ $rare->credit_value }}</span>
            </div>
            <span>{{ __('credits') }}</span>
        </div>
        @elseif($rare->currency_type === 5)
        <div class="rounded h-[40px] flex items-center justify-between px-4" style="background-color:#4cade0;">
        <div class="flex items-center gap-x-2">
                <img src="{{ asset('/assets/images/icons/diamond.png') }}" class="w-6 h-6" alt="Diamanti">
                <span class="font-semibold">{{ $rare->currency_value }}</span>
            </div>
            <span>Diamanti</span>
        </div>
        @elseif($rare->currency_type === 0)
        <div class="rounded h-[40px] flex items-center justify-between px-4" style="background-color:#9c6bdb;">
            <div class="flex items-center gap-x-2">
                <img src="{{ asset('/assets/images/icons/duckets.png') }}" class="w-6 h-6" alt="Duckets">
                <span class="font-semibold">{{ $rare->currency_value }}</span>
            </div>
            <span>Duckets</span>
        </div>
        @endif
        @if ($user->rank > 6)
        <form action="{{ route('values.delete', $rare->id) }}" method="POST" onsubmit="return confirm('Sei sicuro di voler rimuovere questo raro?');">
            @csrf
            @method('DELETE')

            <button type="submit"
                    class="w-full rounded bg-red-500 hover:bg-red-600 text-white p-2 border-2 border-red-400 transition ease-in-out duration-150 font-semibold">
                Rimuovi
            </button>
        </form>
        @endif
    </div>
</div>
