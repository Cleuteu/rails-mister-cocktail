import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktails are love", "Coktails are life"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
