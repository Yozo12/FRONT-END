<x-app-layout>
    @push('title', __('Rare values'))

    <div class="col-span-12 lg:col-span-9 lg:w-[96%]">
        <div class="flex flex-col gap-y-4">
            @if(isset($categories->name))
                <x-content.content-card :icon="$categories->badge">
                    <x-slot:title>
                        {{ $categories->name }}
                    </x-slot:title>

                    <x-slot:under-title>
                        {{ __('All the :category rares', ['category' => $categories->name]) }}
                    </x-slot:under-title>

                    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                        @foreach($categories->furniture as $rare)
                            <x-rares.rare-card :rare="$rare" />
                        @endforeach
                    </div>
                </x-content.content-card>
            @else
                @forelse($categories as $category)
                    <x-content.content-card :icon="$category->badge">
                        <x-slot:title>
                            {{ $category->name }}
                        </x-slot:title>

                        <x-slot:under-title>
                            {{ __('Tutti i  :category rari', ['category' => $category->name]) }}
                        </x-slot:under-title>

                        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
                            @foreach($category->furniture as $rare)
                                <x-rares.rare-card :rare="$rare" :user="$user" />
                            @endforeach
                        </div>
                    </x-content.content-card>
                @empty
                    <x-content.content-card icon="currency-icon">
                        <x-slot:title>
                            {{ __('Rare values') }}
                        </x-slot:title>

                        <x-slot:under-title>
                            {{ __('Get an overview of all of the rares on :hotel', ['hotel' => setting('hotel_name')]) }}
                        </x-slot:under-title>

                        <p class="text-center">
                            {{ __('We currently have no rares listed here') }}
                        </p>
                    </x-content.content-card>
                @endforelse
            @endif
        </div>
    </div>

    <div class="col-span-12 lg:col-span-3 lg:w-[110%] space-y-4 lg:-ml-[32px]">
        @if ($user->rank > 6)
        <x-content.content-card icon="rare-icon"  classes="border dark:border-gray-900">
            <x-slot:title>
                Aggiungi rari
            </x-slot:title>
            <form action="{{ route('values.add') }}" method="GET" class="space-y-3">
                @csrf
                @if (setting('cloudflare_turnstile_enabled'))
                <x-turnstile />
                @endif
                <x-form.secondary-button>
                    + Aggiungi Rari
                </x-form.secondary-button>
            </form>
        </x-content.content-card>
        @endif

        <x-content.content-card icon="catalog-icon" classes="border dark:border-gray-900">
            <x-slot:title>
                Cerca
            </x-slot:title>

            <x-slot:under-title>
                Cerca i rari
            </x-slot:under-title>

            <form action="{{ route('values.search') }}" method="POST" class="space-y-3">
                @csrf

                <x-form.input classes="mb-3" name="search" placeholder="Cerca i rari"/>

                @if (setting('google_recaptcha_enabled'))
                    <div class="g-recaptcha" data-sitekey="{{ config('habbo.site.recaptcha_site_key') }}"></div>
                @endif

                @if (setting('cloudflare_turnstile_enabled'))
                    <x-turnstile />
                @endif

                <x-form.secondary-button>
                   Cerca
                </x-form.secondary-button>
            </form>
        </x-content.content-card>

        <x-content.content-card icon="inventory-icon" classes="border dark:border-gray-900">
            <x-slot:title>
                Categoria di rari
            </x-slot:title>

            <x-slot:under-title>
                Seleziona una categoria
            </x-slot:under-title>

            <div class="px-2 text-sm dark:text-gray-200 space-y-2">
                <div class="rounded bg-gray-200 dark:bg-gray-700 py-2 px-4 transition duration-200 ease-in-out hover:scale-[102%]">
                    <a href="{{ route('values.index') }}" class="block text">
                       Tutti i rari
                    </a>
                </div>

                @foreach($categoriesNav as $category)
                    <div class="rounded bg-gray-200 dark:bg-gray-700 py-2 px-4 transition duration-200 ease-in-out hover:scale-[102%]">
                        <a href="{{ route('values.category', $category->id) }}" class="block text">
                            {{ $category->name }}
                        </a>
                    </div>
                @endforeach
            </div>
        </x-content.content-card>
    </div>

</x-app-layout>
