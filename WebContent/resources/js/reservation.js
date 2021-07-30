let list = document.querySelectorAll(".list");

for (let i = 0; i < list.length; i++) {
  list[i].onclick = function () {
    let j = 0;
    while (j < list.length) {
      list[j++].className = "list";
    }
    list[i].className = "list active";
  };
}

function sub(e) {
  let sub = document.getElementsByClassName("theater_location_sub");

  for (let i = 0; i < sub.length; i++) {
    if (sub[i].style.display == "block") {
      sub[i].style.display = "none";
    }
  }
  e.parentElement.getElementsByTagName("ul")[0].style.display = "block";
}
let btn = document.querySelectorAll(".theater_location_sub button");

for (let i = 0; i < btn.length; i++) {
  btn[i].onclick = function () {
    let j = 0;
    while (j < btn.length) {
      btn[j++].className = "btn";
    }
    btn[i].className = "btn red";
  };
}

let movie_kind_btn = document.querySelectorAll(".movie_title");

for (let i = 0; i < movie_kind_btn.length; i++) {
  movie_kind_btn[i].onclick = function () {
    let j = 0;
    while (j < movie_kind_btn.length) {
      movie_kind_btn[j++].className = "";
    }
    movie_kind_btn[i].className = "on";
  };
}


function movie_kind(e) {
  let movie_kind_sub = document.getElementsByClassName("movie_kind_sub")
  for(let i=0; i < movie_kind_sub.length; i++){
    if(movie_kind_sub[i].style.display == "block"){
      movie_kind_sub[i].style.display = "none"
    }
    e.getElementsByClassName("movie_kind_sub")[0].style.display = "block"
  }
}

let seat_btn = document.querySelectorAll(".seat_btn");

for (let i = 0; i < seat_btn.length; i++) {
  seat_btn[i].onclick = function () {
    let j = 0;
    while (j < seat_btn.length) {
      seat_btn[j++].className = "seat_btn";
    }
    seat_btn[i].className = "seat_btn on";
  };
}

