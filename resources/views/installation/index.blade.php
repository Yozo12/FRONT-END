<x-installation-layout>
    <x-content.installation-content-section icon="hotel-icon" classes="border">
        <x-slot:title>
            {{ __('Welcome to Yabbo') }}
        </x-slot:title>

        <x-slot:under-title>
            {{ __('We are delighted of having you trying Yabbo') }}
        </x-slot:under-title>

        <div class="space-y-3">
            <p>
                {{ __('Hello there! We are truly grateful that you have chosen Yabbo for your hotel.') }}
            </p>

            <p>
                {{ __('Yabbo is built with the community in mind, meaning we highly value community input, rather than only bringing our own ideas & vision to the CMS we try our very best to implement suggestions made by our beloved community. We want everyone to be able to contribute or customise Yabbo to their needs without having a bachelor in programming.') }}
            </p>

            <p>{{ __('Yabbo sole purpose is to empower hotel owners like you. We want you to be able to run your hotel with ease. Our user-friendly interface, robust features, and helpful community are here to ensure that your experience with Yabbo is nothing short of exceptional!') }}</p>

            <p>
                {{ __('As you dive into Yabbo, we encourage you to explore the extensive range of features we have curated to help you bring your vision to life. From customizable templates to seamless integrations with clients like Yabbo, we will have you set up in no time.') }}
            </p>

            <p>
                {!! __('To get started, we recommend checking out our <a href=":documentation_link" target="_blank" class="font-semibold underline">comprehensive documentation</a>, which will guide you through the initial setup and help you make the most of your Yabbo experience.', ['documentation_link' => 'https://github.com/atom-retros/atomcms/wiki']) !!}
            </p>

            <p>
                {!! __('And remember, please <a href=":discord_link" target="_blank" class="font-semibold underline">join our Discord</a>. If you have any questions or need assistance, please do not hesitate to reach out. We are here to help you every step of the way.', ['discord_link' => 'https://discord.gg/pP6HyZedAj']) !!}
            </p>

            <p>
                {{ __('Once again, thank you for choosing Yabbo, and we cannot wait to see the incredible project you will create.') }}
            </p>

            <p class="font-semibold italic">
                {{ __('With everything being said we just want to wish you a warm welcome to the Yabbo family!') }}
            </p>
            <hr>

            <div>
                {{ __('To avoid any third-party party abuse, please provide the installation code, which can be found in your database inside the "website_installation" table under the column "installation_key".') }}
            </div>

            <form action="{{ route('installation.start-installation') }}" method="POST">
                @csrf

                <label class="block font-semibold text-gray-700" for="installation_key">
                    {{ __('Installation key') }}
                </label>

                <input
                    class="focus:ring-0 border-4 border-gray-200 rounded focus:border-[#eeb425] w-full @error('installation_key')border-red-600 ring-red-500 @enderror"
                    id="installation_key" type="text" name="installation_key" placeholder="{{ __('Enter your installation key') }}" autofocus required autocomplete="false">

                @error('installation_key')
                    <p class="mt-1 text-xs italic text-red-500">
                        {{ $message }}
                    </p>
                @enderror

                <x-form.secondary-button classes="mt-3">
                    {{ __('Start the setup') }}
                </x-form.secondary-button>
            </form>
        </div>
    </x-content.installation-content-section>
</x-installation-layout>
