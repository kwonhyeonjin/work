const swiper = new Swiper(".movie_list_slide", {
  // Optional parameters
  slidesPerView: 4,
  spaceBetween: 30,
  loop: true,
  pagination: {
    el: ".paging",
  },
  navigation: {
    nextEl: ".movie_list_slide .next",
    prevEl: ".movie_list_slide .prev",
  },
});


