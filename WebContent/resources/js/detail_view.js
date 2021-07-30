const swiper1 = new Swiper(".image_view_slide", {
    // Optional parameters
    slidesPerView: 1,
    spaceBetween: 30,
    loop:true,
    pagination: {
      el: ".paging",
    },
    navigation: {
      nextEl: ".image_view_slide .next",
      prevEl: ".image_view_slide .prev",
    },
  });

function Zoom(e) {
    let src = e.parentElement.getElementsByTagName("img")[0].attributes.src.value
    document.getElementsByClassName("magnifier_contain")[0].style.display = "block"
    document.getElementsByClassName("magnifier")[0].getElementsByTagName("img")[1].attributes.src.value = src
}
document.getElementsByClassName("magnifier_contain")[0].addEventListener('click', function (e) {
    if (e.target == e.currentTarget) {
        document.getElementsByClassName("magnifier_contain")[0].style.display = 'none';
    }
});
document.getElementsByClassName('x_icon')[0].addEventListener('click', function () {
    document.getElementsByClassName("magnifier_contain")[0].style.display = 'none';
});

