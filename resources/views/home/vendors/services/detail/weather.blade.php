<a data-toggle="modal" data-target="#weatherModal" id="open_weather_modal" href="javascript:void(0);">
  <img src="/frontend/images/weather-icon.jpg" />
</a>

<!-- Modal -->
<div id="weatherModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      	<h4 class="modal-title">Compare Packages</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <div class="modal-body">
        <form class="weather-form">
        <div class="row">
          <div class="col-lg-9">
             <div class="form-group">
                        <input type="text" class="form-control" id="weatherDatePicker" placeholder="select date">
                        <span class="input-icon"><i class="fas fa-calendar-alt"></i></span>
                     </div>
            </div>
            <div class="col-lg-3">            
              <input type="submit" name="" class="cstm-btn" value="Search">
            </div>
          </div>
        </form>
    </div>
   <!--  Weather chart sec -->
      <div class="weather-chart-container">
        <div class="container" id="weather-wrapper" style="background: url('/frontend/images/weather-bg.jpg');">
  <div class="current-weather" id="current-weather">
    <div class="row">
      
      <!-- Right panel -->
      <div class="col-md-4 col-sm-5">
        <h5><spam id="cityName"></spam>, <spam id="cityCode"></spam></h5>
        <h6 id="localDate"></h6>
        <h5 id="localTime"></h5>
        <a id="refreshButton" href="#"><i class="fas fa-sync-alt"></i> Refresh</a>
      </div>
      
      <!-- Center panel -->
      <div class="col-md-5 col-sm-7" style="margin: 10px auto;padding:0;">
        <div class="row">
          <i class="wi" id ="main-icon" style="font-size: 85px;"></i>
          <div>
            <spam id="mainTemperature"></spam>
            <p id="tempDescription"></p>
          </div>
          <p style="font-size: 1.5rem;"><a href="#" class="active" id="celcius">°C</a> | <a href="#" id="farenheit">°F</a></p>
        </div>
      </div>
      
      <!-- Left panel -->
      <div class="col-xs-12 col-sm-12 col-md-3 row" style="text-align: right;">
        <div class="col-md-12 col-sm-3 col-xs-3 side-weather-info">
          <h6>Humidity: <spam id="humidity"></spam>%</h6>
        </div>
        <div class="col-md-12 col-sm-3 col-xs-3 side-weather-info">
          <h6>Wind: <spam id="wind"></spam> m/s</h6>
        </div>
        <div class="col-md-12 col-sm-3 col-xs-3 side-weather-info">
          <h6>High: <spam id="mainTempHot"></spam>°</h6>
        </div>
        <div class="col-md-12 col-sm-3 col-xs-3 side-weather-info">
          <h6>Low: <spam id="mainTempLow"></spam>°</h6>
        </div>
      </div>
      
    </div>
  </div>
  
  <!-- Modal -->
  <div class="modal fade" id="protocol-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        </div>
        <div class="modal-body">
          <p>Due to weather api restrictions, data can only be shown via HTTP request.</p>
          <p>Sorry for the inconvenience.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- 4 days forecast -->
  <div class="weather-tabbing-data">
    <div class="row" style="padding: 2px;">
      
      <!-- Day 1 -->
      <div class="col-md-3 col-sm-6 day-weather-box">
        <div class="col-sm-12 day-weather-inner-box">
          <div class="col-sm-8 forecast-main">
            <p id="forecast-day-1-name"></p>
            <div class="row">
              <h5 id="forecast-day-1-main">°</h5>
              <i class="wi forecast-icon" id="forecast-day-1-icon"></i>
            </div>
          </div>
          <div class="col-sm-4 forecast-min-low">
            <p><spam class="high-temperature" id="forecast-day-1-ht"></spam></p>
            <p><spam class="low-temperature" id="forecast-day-1-lt"></spam></p>
          </div>
        </div>
      </div>
      
      <!-- Day 2 -->
      <div class="col-md-3 col-sm-6 day-weather-box">
        <div class="col-sm-12 day-weather-inner-box">
          <div class="col-sm-8 forecast-main">
            <p id="forecast-day-2-name"></p>
            <div class="row">
              <h5 id="forecast-day-2-main">°</h5>
              <i class="wi forecast-icon" id="forecast-day-2-icon"></i>
            </div>
          </div>
          <div class="col-sm-4 forecast-min-low">
            <p><spam class="high-temperature" id="forecast-day-2-ht"></spam></p>
            <p><spam class="low-temperature" id="forecast-day-2-lt"></spam></p>
          </div>
        </div>
      </div>
      
      <!-- Day 3 -->
      <div class="col-md-3 col-sm-6 day-weather-box">
        <div class="col-sm-12 day-weather-inner-box">
          <div class="col-sm-8 forecast-main">
            <p id="forecast-day-3-name"></p>
            <div class="row">
              <h5 id="forecast-day-3-main">°</h5>
              <i class="wi forecast-icon" id="forecast-day-3-icon"></i>
            </div>
          </div>
          <div class="col-sm-4 forecast-min-low">
            <p><spam class="high-temperature" id="forecast-day-3-ht"></spam></p>
            <p><spam class="low-temperature" id="forecast-day-3-lt"></spam></p>
          </div>
        </div>
      </div>
      
      <!-- Day 4 -->
      <div class="col-md-3 col-sm-6 day-weather-box">
        <div class="col-sm-12 day-weather-inner-box">
          <div class="col-sm-8 forecast-main">
            <p id="forecast-day-4-name"></p>
            <div class="row">
              <h5 id="forecast-day-4-main">°</h5>
              <i class="wi forecast-icon" id="forecast-day-4-icon"></i>
            </div>
          </div>
          <div class="col-sm-4 forecast-min-low">
            <p><spam class="high-temperature" id="forecast-day-4-ht"></spam></p>
            <p><spam class="low-temperature" id="forecast-day-4-lt"></spam></p>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</div>
      </div>
      <!-- =============== -->
      
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
