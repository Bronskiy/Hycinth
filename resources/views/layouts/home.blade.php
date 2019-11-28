<!DOCTYPE html>
<html>
<head>
	<title>@yield('title')</title>
    <meta name="description" content="@yield('description')">
    <meta name="keywords" content="@yield('keywords')">


	<link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.0/flexslider.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/rangeslider.js/2.3.0/rangeslider.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/weather-icons/2.0.9/css/weather-icons.css">

    <!-- materialdesignicons css -->
     <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css">
     <!-- ============ -->

    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/bootstrap-datetimepicker.min.css')}}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

 
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/responsive.css')}}">

<style type="text/css">
    .custom-loading {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: #11111169;
        z-index: 99;
        display: none;
    }
</style>

</head>
<body data-url="{{url('/')}}" class="{{\Request::route()->getName() === 'vendor_detail_page' || \Request::route()->getName() === 'myBusinessView' ? 'gray-bg' : ''}}">
	
<div class="custom-loading"><div class="loader5"></div></div>



@if(\Request::route()->getName() =="homepage" || \Request::route()->getName() =="homepage2")
@include('includes.header')
@else
@include('includes.inner_header')

@endif

@yield('content')

@include('includes.footer')

  <!-- Scripting starts here -->
    <!-- <script src="https://code.jquery.com/jquery-3.1.0.js"></script> -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    <script src="{{url('/frontend/js/animation.js')}}"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/rangeslider.js/2.3.0/rangeslider.min.js"></script>
    <script src="{{url('/frontend/js/ResizeSensor.js')}}"></script>
    <script src="{{url('/frontend/js/sticky-sidebar.min.js')}}"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="{{url('/frontend/js/bootstrap-datetimepicker.min.js')}}"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.0/jquery.flexslider.min.js"></script>
    <script type="text/javascript" src="{{url('/frontend/js/owl.carousel.min.js')}}"></script>
    <script src="https://yauzer.com/js/validate.min.js"></script>
    <script type="text/javascript" src="{{url('/frontend/js/custom.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.12/dist/js/select2.min.js"></script>
     
    <script> 
        AOS.init();
    </script>
    <script>
        //Photos flex slider 
$(window).load(function() {
  // The slider being synced must be initialized first
  $('#Photo-carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 165,
    itemMargin: 5,
    maxItems: 6,
    asNavFor: '#Photo-slider'
  });
 
  $('#Photo-slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#Photo-carousel"
  });


  // The slider being synced must be initialized first
  $('#Video-carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 210,
    itemMargin: 5,
    asNavFor: '#Video-slider'
  });
 
  $('#Video-slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#Video-carousel"
  });

});

 
            $(function () {
                $('#datetimepicker1').datetimepicker();
                $('#weatherDatePicker').datetimepicker({ format: 'YYYY-MM-DD' });
            });



// //weather report js

// var unitIsCelcius = true;
// var globalForecast = [];

// // Maps the API's icons to the ones from https://erikflowers.github.io/weather-icons/
// var weatherIconsMap = {
//   "01d": "wi-day-sunny",
//   "01n": "wi-night-clear",
//   "02d": "wi-day-cloudy",
//   "02n": "wi-night-cloudy",
//   "03d": "wi-cloud",
//   "03n": "wi-cloud",
//   "04d": "wi-cloudy",
//   "04n": "wi-cloudy",
//   "09d": "wi-showers",
//   "09n": "wi-showers",
//   "10d": "wi-day-hail",
//   "10n": "wi-night-hail",
//   "11d": "wi-thunderstorm",
//   "11n": "wi-thunderstorm",
//   "13d": "wi-snow",
//   "13n": "wi-snow",
//   "50d": "wi-fog",
//   "50n": "wi-fog"
// };


// $(function(){
//   // getClientPosition();
//   const latitude = $('#latitude').val();
//   const longitude = $('#longitude').val();

//   getWeatherData(latitude, longitude);
//   startClock();  
// });


// function startClock(){
//   setInterval(function(){
//     $("#localTime").text(new Date().toLocaleTimeString());
//   }, 1000);
// }


// // function getClientPosition() {
// //   $.getJSON("https://ipapi.co/json/", function(position) {
// //     $("#cityName").text(position.city);
// //     $("#cityCode").text(position.country);
    
// //     getWeatherData(position.latitude, position.longitude);
// //   });
// // }


// function getWeatherData(latitude, longitude) {
//   $.ajax({
//     type: "GET",
//     url: "https://cors-anywhere.herokuapp.com/http://api.openweathermap.org/data/2.5/forecast/daily?APPID=9b4bbf30228eb8528d36e79d05da1fac&lat=" + latitude + "&lon=" + longitude + "&units=metric&cnt=5",
//     cache: true,
//     headers: {
//       "Access-Control-Allow-Headers": "x-requested-with"
//     },
//     success: function(forecast){
//         console.log('forecast', forecast);
//       globalForecast = forecast;
//       updateForecast(forecast);

//       // Stops Refresh button's spinning animation
//       $("#refreshButton").html("<i class='fa fa-refresh fa-fw'></i> Refresh");
//     },
//     error: function(error){
//       console.log("Error with ajax: "+ error);
//     }
//   });
// }


// // Update view values from passed forecast
// function updateForecast(forecast){

//   // Present day
//   var today = forecast.list[0];
//   $("#tempDescription").text(toCamelCase(today.weather[0].description));
//   $("#humidity").text(today.humidity);
//   $("#wind").text(today.speed);
//   $("#localDate").text(getFormattedDate(today.dt));
//   $("#main-icon").addClass(weatherIconsMap[today.weather[0].icon]);
//   $("#mainTemperature").text(Math.round(today.temp.day));
//   $("#mainTempHot").text(Math.round(today.temp.max));
//   $("#mainTempLow").text(Math.round(today.temp.min));


//   // Following days data
//   for(var i = 1; i < (forecast.list).length; i++){
//     var day = forecast.list[i];

//     // Day short format e.g. Mon
//     var dayName = getFormattedDate(day.dt).substring(0,3);

//     // weather icon from map
//     var weatherIcon = weatherIconsMap[day.weather[0].icon];

//     $("#forecast-day-" + i + "-name").text(dayName);
//     $("#forecast-day-" + i + "-icon").addClass(weatherIcon);
//     $("#forecast-day-" + i + "-main").text(Math.round(day.temp.day));
//     $("#forecast-day-" + i + "-ht").text(Math.round(day.temp.max));
//     $("#forecast-day-" + i + "-lt").text(Math.round(day.temp.min));
//   }
// }


// // Refresh button handler
// $("#refreshButton").on("click", function(){
//   // Starts Refresh button's spinning animation
//   $("#refreshButton").html("<i class='fa fa-refresh fa-spin fa-fw'></i>");
//   getWeatherData();
// });


// // Celcius button handler.
// // Converts every shown value to Celcius
// $("#celcius").on("click", function(){
//   if(!unitIsCelcius){
//     $("#farenheit").removeClass("active");
//     this.className = "active";

//     // main day
//     var today = globalForecast.list[0];
//     today.temp.day = toCelcius(today.temp.day);
//     today.temp.max = toCelcius(today.temp.max);
//     today.temp.min = toCelcius(today.temp.min);
//     globalForecast.list[0] = today;

//     // week
//     for(var i = 1; i < 5; i ++){
//       var weekDay = globalForecast.list[i];
//       weekDay.temp.day = toCelcius(weekDay.temp.day);
//       weekDay.temp.max = toCelcius(weekDay.temp.max);
//       weekDay.temp.min = toCelcius(weekDay.temp.min);
//       globalForecast[i] = weekDay;
//     }

//     // update view with updated values
//     updateForecast(globalForecast);

//     unitIsCelcius = true;
//   }
// });


// // Farenheit button handler
// // Converts every shown value to Farenheit
// $("#farenheit").on("click", function(){  
//   if(unitIsCelcius){
//     $("#celcius").removeClass("active");
//     this.className = "active";
    
//     // main day
//     var today = globalForecast.list[0];
//     today.temp.day = toFerenheit(today.temp.day);
//     today.temp.max = toFerenheit(today.temp.max);
//     today.temp.min = toFerenheit(today.temp.min);
//     globalForecast.list[0] = today;

//     // week
//     for(var i = 1; i < 5; i ++){
//       var weekDay = globalForecast.list[i];
//       weekDay.temp.day = toFerenheit(weekDay.temp.day);
//       weekDay.temp.max = toFerenheit(weekDay.temp.max);
//       weekDay.temp.min = toFerenheit(weekDay.temp.min);
//       globalForecast[i] = weekDay;
//     }

//     // update view with updated values
//     updateForecast(globalForecast);
    
//     unitIsCelcius = false;
//   }
// });


// // Applies the following format to date: WeekDay, Month Day, Year
// function getFormattedDate(date){
//   var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
//   return new Date(date * 1000).toLocaleDateString("en-US",options);
// }


// // Formats the text to CamelCase
// function toCamelCase(str) {
//   var arr = str.split(" ").map(
//     function(sentence){
//       return sentence.charAt(0).toUpperCase() + sentence.substring(1);
//     }
//   );
//   return arr.join(" ");
// }


// // Converts to Celcius
// function toCelcius(val){
//   return Math.round((val - 32) * (5/9));
// }


// // Converts to Farenheit
// function toFerenheit(val) {
//   var degrees = (val * 1.8) + 32;
//   var rounded = Math.round(degrees);
//   return rounded;
// }



        
    </script>
@yield('scripts')

</body>

</html>