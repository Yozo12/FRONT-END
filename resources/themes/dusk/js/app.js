import "./bootstrap";
import "./external/flowbite";

import "swiper/css";
import "swiper/css/pagination";

import Alpine from "alpinejs";
import Focus from "@alpinejs/focus";

import ArticleReactions from "./components/ArticleReactions.js";

import Swiper, { Navigation, Pagination } from "swiper";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

ArticleReactions.init();
Alpine.plugin(Focus);
Alpine.start();

Swiper.use([Navigation, Pagination]);

// Swiper Initialization
document.addEventListener("DOMContentLoaded", function () {
    const swiper = new Swiper(".swiper", {
        // Your Swiper options here
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
        },
    });
});

console.log(
    "%cYabbo%c\n\nYabbo is a CMS for made for the community to enjoy. You can join our wonderful community at https://discord.gg/rX3aShUHdg\n\n",
    "color: #14619c; -webkit-text-stroke: 2px black; font-size: 32px; font-weight: bold;",
    ""
);
