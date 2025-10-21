<x-app-layout>
    @push('title', __('Aggiungi rari'))

    <div class="col-span-12">
        <div class="flex flex-col gap-y-4">
            <a href="{{ route('values.index') }}" class="dark:text-gray-100 underline flex gap-x-1 items-center">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15m0 0l6.75 6.75M4.5 12l6.75-6.75" />
                </svg>
                Torna ai rari
            </a>

            <x-content.content-card icon="rare-icon">
                <x-slot:title>
                    Aggiungi Rari
                </x-slot:title>
                <x-slot:under-title>
                    Funzione per lo staff: serve ad aggiungere la lista rari
                </x-slot:under-title>

                {{-- FORM --}}
                <form action="{{ route('values.store') }}" enctype="multipart/form-data"  method="POST" class="space-y-4 mt-4">
                    @csrf

                    {{-- Item ID --}}
                    <div>
                        <label for="item_id" class="block text-sm font-medium text-gray-300 mb-1">
                            Item ID del furno (opzionale)
                        </label>
                        <input type="number" id="item_id" name="item_id"
                               class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500"
                               placeholder="Inserisci l'ID dell'item">
                    </div>

                    {{-- Foto Raro --}}
                    <div>
                        <label for="photo" class="block text-sm font-medium text-gray-300 mb-1">
                            Foto del raro
                        </label>
                        <input type="file" id="photo" name="photo" required
                               accept=".jpg,.jpeg,.png"
                               class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500">
                    </div>

                    {{-- Nome --}}
                    <div>
                        <label for="name" class="block text-sm font-medium text-gray-300 mb-1">
                            Nome del raro
                        </label>
                        <input type="text" id="name" name="name" required
                               class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500"
                               placeholder="Inserisci il nome">
                    </div>

                    {{-- Credit Value --}}
                    <div>
                        <label for="credit_value" class="flex items-center gap-x-2 text-sm font-medium text-gray-300 mb-1">
                            <img src="{{ asset('assets/images/icons/credits.png') }}" alt="Credits" class="w-5 h-5">
                            <span>Crediti</span>
                        </label>
                        <input type="number" id="credit_value" name="credit_value"
                               class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500"
                               placeholder="0">
                    </div>

                    {{-- Currency Value + Select --}}
                    <div>
                        <label for="currency_value" class="flex items-center gap-x-2 text-sm font-medium text-gray-300 mb-1">
                            <img src="{{ asset('assets/images/icons/diamond.png') }}" alt="Diamanti" class="w-5 h-5">
                            Valore
                            <img src="{{ asset('assets/images/icons/duckets.png') }}" alt="Duckets" class="w-5 h-5">
                        </label>
                        <input type="number" id="currency_value" name="currency_value"
                               class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500"
                               placeholder="0">

                        <label for="currency_type" class="block text-sm font-medium text-gray-300 mt-2 mb-1">
                            Tipo valuta
                        </label>
                        <select id="currency_type" name="currency_type" disabled
                                class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500">
                            <option value="">-- Seleziona tipo valuta --</option>
                            <option value="5">Diamanti</option>
                            <option value="0">Duckets</option>
                        </select>
                    </div>

                    {{-- Categoria --}}
                    <div>
                        <label for="category_id" class="block text-sm font-medium text-gray-300 mt-2 mb-1">
                            Categoria
                        </label>
                        <select id="category_id" name="category_id" required
                                class="w-full rounded-md border-gray-700 bg-gray-800 text-gray-200 p-2 focus:outline-none focus:ring focus:ring-indigo-500">
                            <option value="">-- Seleziona Categoria --</option>
                            @foreach($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    {{-- Pulsante --}}
                    <div class="pt-3">
                        <x-form.secondary-button>
                            Salva Raro
                        </x-form.secondary-button>
                    </div>
                </form>

                {{-- SCRIPT --}}
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const currencyValue = document.getElementById('currency_value');
                        const currencyType = document.getElementById('currency_type');

                        currencyValue.addEventListener('input', function () {
                            if (this.value && parseInt(this.value) > 0) {
                                currencyType.removeAttribute('disabled');
                            } else {
                                currencyType.setAttribute('disabled', 'disabled');
                                currencyType.value = '';
                            }
                        });
                    });
                </script>
            </x-content.content-card>
        </div>
    </div>
</x-app-layout>
