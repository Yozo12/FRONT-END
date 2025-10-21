<footer class="w-full h-14 flex items-center justify-center bg-gray-900 text-gray-500 font-bold cursor-pointer transition duration-200 ease-in-out hover:text-gray-400" onclick="showFooter()">
    &copy {{ date('Y') }} {{ setting('hotel_name') }} è un progetto educativo senza scopo di lucro e non è in alcun modo affiliato a Sulake Corporation Oy.
</footer>

<style>
    .swal2-modal {
        background-color: #21242e;
        color: #fff;
    }
    .swal2-html-container {
        max-height: 300px;
        overflow-y: scroll;
    }
</style>

<script>
    function showFooter() {
        const creditList = [
             {
                contributor: 'yozo',
                contributions: 'Creatore e manutentore del retro'
            }
            // {
            //     contributor: 'Nicollas',
            //     contributions: 'Dark mode, Turbolinks, Performance improvements, Article reactions, User sessions, Layout improvements & PT-BR translations'
            // },
            // {
            //     contributor: 'Dominic/Mikkel',
            //     contributions: 'Performance improvements & User sessions'
            // },
            // {
            //     contributor: 'EntenKoeniq',
            //     contributions: 'Automatic language registration, rooms page, profile page fixes & Paypal shop contributions'
            // },
            // {
            //     contributor: 'Kani',
            //     contributions: 'Rcon System & Findretros API'
            // },
            // {
            //     contributor: 'Beny',
            //     contributions: 'Findretros API fixes & CF Fixes'
            // },
            // {
            //     contributor: 'Live',
            //     contributions: 'French translations, bugfixes & tweaks'
            // },
            // {
            //     contributor: 'MisterDeen',
            //     contributions: 'Custom Discord widget, bugfixes & tweaks'
            // },
            // {
            //     contributor: 'Assholic',
            //     contributions: 'Fonts for the logo generator'
            // },
            // {
            //     contributor: 'DamienJolly',
            //     contributions: 'Bugfixes'
            // },
            // {
            //     contributor: 'Danbo',
            //     contributions: 'Bugfixes'
            // },
            // {
            //     contributor: 'Diddy/Josh',
            //     contributions: 'Code readability improvements'
            // },
            // {
            //     contributor: 'Oliver',
            //     contributions: 'Finnish translations'
            // },
            // {
            //     contributor: 'Damue & EntenKoeniq',
            //     contributions: 'German translations'
            // },
            // {
            //     contributor: 'Talion',
            //     contributions: 'Turkish translations'
            // },
            // {
            //     contributor: 'CentralCee, Rille & Tuborgs',
            //     contributions: 'Swedish translations'
            // },
            // {
            //     contributor: 'Yannick',
            //     contributions: 'Netherland translations'
            // },
            // {
            //     contributor: 'Gedomi',
            //     contributions: 'Spanish translations'
            // },
            // {
            //     contributor: 'Lorenzune',
            //     contributions: 'Italian translations'
            // },
            // {
            //     contributor: 'Twana',
            //     contributions: 'Norwegian translations'
            // },
            // {
            //     contributor: 'Plow',
            //     contributions: 'French translations'
            // },
        ];

        const formattedCredits = creditList.map(credit =>
            `<strong>${credit.contributor}</strong> ${credit.contributions} <br/>`
        ).join('');

        const creator =
            '<a>yozo</a>';

        const content =
            'Grazie per Giocare a Yabbo. Ci impegniamo tutti i giorni e la tua presenza non fa altro che renderci orgogliosi  del nostro lavoro. ';

        const drivenBy = 'Pensato e gestito da';

        Swal.fire(
            '<span class="text-[26px]">{{ setting('hotel_name') }}</span>',
            `<span class="text-sm">${content}<br/><br/>${drivenBy} ${creator}<br/><br/><span class="flex flex-col space-y-2">{{ __('Credits:') }}<br/>${formattedCredits}</span></span>`,
            'question'
        );
    }
</script>
