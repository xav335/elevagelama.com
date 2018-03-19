$(document).foundation();
var swiper = new Swiper('.swiper-container-image', {
  effect: 'fade',
  loop: true,
  autoplay: {
    delay: 3500,
    disableOnInteraction: false,
  },
  pagination: {
    el: '.swiper-pagination-image',
    clickable: true,
  },
  breakpoints: {
    // when window width is <= 320px
    640: {
      slidesPerView: 1
    }
  }
});
var swiper2 = new Swiper('.swiper-container-actu', {
  pagination: {
    el: '.swiper-pagination-actu',
    clickable: true,
  },
  navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
});


