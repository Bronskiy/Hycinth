function comingsoon(end_date, days, hours, minutes, seconds) {
  const second = 1000,
      minute = second * 60,
      hour = minute * 60,
      day = hour * 24;

const date_val = $(`#${end_date}`).val()
let countDown = new Date(date_val).getTime(),
    x = setInterval(function() {

      let now = new Date().getTime(),
          distance = countDown - now;

      document.getElementById(`${days}`).innerText = Math.floor(distance / (day)),
      document.getElementById(`${hours}`).innerText = Math.floor((distance % (day)) / (hour)),
      document.getElementById(`${minutes}`).innerText = Math.floor((distance % (hour)) / (minute)),
      document.getElementById(`${seconds}`).innerText = Math.floor((distance % (minute)) / second);
    }, second)
}
