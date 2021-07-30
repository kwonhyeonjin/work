let adult_num = 0;
let chile_num = 0;
let disabled_person_mum = 0;
let seats_all_num;

// document.getElementsByClassName("adult_count")[0].innerText = adult_num;
// document.getElementsByClassName("chile_count")[0].innerText = chile_num;
// document.getElementsByClassName("disabled_person_count")[0].innerText = disabled_person_mum;

function adult_click(e) {
  let all = e.parentElement.getElementsByTagName("strong")[0];
  function adult() {
    adult_num = Number(all.innerText);
    seats_all_sum();
  }
  function chile() {
    chile_num = Number(all.innerText);
    seats_all_sum();
  }
  function disabled_person() {
    disabled_person_mum = Number(all.innerText);
    seats_all_sum();
  }
  function seats_all_sum() {
    seats_all_num = adult_num + chile_num + disabled_person_mum;
  }
  function count() {
    if (e.parentElement.className == "adult_set") {
      adult();
    }
    if (e.parentElement.className == "chile_set") {
      chile();
    }
    if (e.parentElement.className == "disabled_person_set") {
      disabled_person();
    }
  }
  if (all.innerText == 0 && e.innerText == "-") {
    alert("더 이상 감소 할 수 없습니다.");
  } else if (seats_all_num == 10 && e.innerText == "+") {
    alert("더 이상 증가 할 수 없습니다.(최대 10명까지 예약 가능합니다)");
  } else {
    if (e.innerText == "+") {
      all.innerText = Number(all.innerText) + 1;
      count();
    }
    if (e.innerText == "-") {
      all.innerText = Number(all.innerText) - 1;
      count();
    }
  }
}

let seats = document.querySelectorAll(".select_seat");


for (let i = 0; i < seats.length; i++) {
  seats[i].onclick = function () {
    if (seats_all_num > 0) {
      let icon = seats[i].getElementsByClassName("material-icons")[0];
      let seat_num = seats[i].getElementsByTagName("span")[1];
      if (icon.className == "material-icons") {
        icon.className = "material-icons on";
        seat_num.style.color = "white";
      } else if (icon.className == "material-icons on") {
        icon.className = "material-icons";
        seat_num.style.color = "black";
      }
      --seats_all_num;
    } else if (seats_all_num == undefined) {
      alert("인원을 먼저 선택해주세요");
    }
    else{
        alert("모두 선택했습니다")
    }
  };
}
