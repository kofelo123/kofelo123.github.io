<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/WEB-INF/views/include/header2.jsp"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<!DOCTYPE html>
<html>
  <head>
    <title>디아크 찾아오시는길</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }

      #origin-input,
      #destination-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 200px;
      }

      #origin-input:focus,
      #destination-input:focus {
        border-color: #4d90fe;
      }

      #mode-selector {
        color: #fff;
        background-color: #4d90fe;
        margin-left: 12px;
        padding: 5px 11px 0px 11px;
      }

      #mode-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
  <div class="row" ></div>
  <div class="col-sm-8 col-sm-offset-2" >
  <section class="subtitle" style="background-image: url('/resources/bootstrap/images/subtitle.png');">
        <div class="container">
            <div class="row">
                <div class="col-sm-9" >
                    <div class="subcontent" style="color:white;margin-top:10px;">
                    <span class="home" ><a href="/sboard/main" style="color:white;">Home </a>  < </span> <span>디아크소개  < </span> <strong><a href="/sboard/location" style="color:white;">오시는길</a></strong>
                    
                        <h2 style="color:white">찾아 오시는 길</h2>
                    </div>
                </div>
              
            </div>
        </div>
   		 </section>

    
   	 </div>
    
  		<div class="row">
		<!-- left column -->
		<div class="col-sm-8 col-sm-offset-2 col-xs-12">
    <input id="origin-input" class="controls" type="text"
        placeholder="출발지를 입력해주세요!">

     
<!--     <input id="desti" class="controls" type="text" value="대한민국 대구광역시 달성군 다사읍 죽곡리 디아크"
        placeholder="도착지를 입력"> -->
        
      <!-- <input type="radio" name="type" id="changemode-walking" >
      <label for="changemode-walking">Walking</label> -->
<!-- <div id="mode-selector" class="controls"> </div> -->
     <!--  <input type="radio" name="type" id="changemode-transit">
      <label for="changemode-transit">Transit</label> -->
<!-- 
      <input type="radio" name="type" id="changemode-driving">
      <label for="changemode-driving">Driving</label> -->
   

    <div id="map"></div>

		</div>
	</div>
    <script>
      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    
      
      
      function initMap() {//map실행
        var map = new google.maps.Map(document.getElementById('map'), {
          mapTypeControl: false,
          center: {lat: 35.838544, lng: 128.468405},
          zoom: 15
        });
        
        var contentString = '<div id="content">'+
        '<div id="siteNotice">'+
        '</div>'+
        '<h2 id="firstHeading" class="firstHeading">디아크</h2>'+
        '<div id="bodyContent">'+
        '<img src="/resources/bootstrap/images/4-1.jpg">'+
        '<p><b>위치 </b>: 대구광역시 달성군 다사읍 강정본길 57' +
        '<br/><br/><b>주요시설 사항</b>:'+
        '<br/>지하1층: 전시실, 다목적실, 세미나'+
        '<br/>지상1,2층: 전시실'+
        '<br/>지상3층:전망테크,카페테리아'+
        '<br/><br/><b>운영시간</b><br/>10:00 ~ 18:00 (지하1층 / 지상1,2층)'+
        '10:00 ~ 23:00 (지상3층 / 평시) <br/>10:00 ~ 22:00 (지상3층 / 동계시)'+
        '<br/><br/><b>휴관</b>: 매주 월요일 및 매년 1월 1일'+
        '</div>'+
        '</div>';

    var infowindow = new google.maps.InfoWindow({
      content: contentString,
      maxWidth: 200
    });

    var marker = new google.maps.Marker({
      position: {lat: 35.838544, lng: 128.468405},
      map: map,
      title: '디아크 (강 문화관)'
    });

 
      infowindow.open(map, marker);
 
        new AutocompleteDirectionsHandler(map);
        
        
      }

       /**
        * @constructor
       */
      function AutocompleteDirectionsHandler(map) {
        this.map = map;
        this.originPlaceId = null;
        this.destinationPlaceId = null;
        this.travelMode = 'WALKING';
        var originInput = document.getElementById('origin-input');//text input 출발지
      /*   var destinationInput = document.getElementById('desti');//text input 목적지 */
        var modeSelector = document.getElementById('mode-selector');//selecter
        this.directionsService = new google.maps.DirectionsService;
        this.directionsDisplay = new google.maps.DirectionsRenderer;
        this.directionsDisplay.setMap(map);

        var originAutocomplete = new google.maps.places.Autocomplete(
            originInput, {placeIdOnly: true});
    /*     var destinationAutocomplete = new google.maps.places.Autocomplete(
            destinationInput, {placeIdOnly: true}); */

    /*     this.setupClickListener('changemode-transit', 'TRANSIT'); */

        this.setupPlaceChangedListener(originAutocomplete, 'ORIG');//아래 함수 호출 2번
       /*  this.setupPlaceChangedListener(destinationAutocomplete, 'DEST'); */

        this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
       /*  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput); */
       /*  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector); */
      }

      // Sets a listener on a radio button to change the filter type on Places
      // Autocomplete.
/*       AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) { //1번 선택(라디오 받아들임)
        var radioButton = document.getElementById(id);
        var me = this;
        radioButton.addEventListener('click', function() {
          me.travelMode = mode;
          me.route();
        });
      }; */

      AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) { //2번
        var me = this;
        autocomplete.bindTo('bounds', this.map);
        autocomplete.addListener('place_changed', function() {
          var place = autocomplete.getPlace();
          if (!place.place_id) {
            window.alert("검색 자동완성에 나오는 결과를 눌러주세요.");
            return;
          }
          if (mode === 'ORIG') {
            me.originPlaceId = place.place_id;
            me.destinationPlaceId = 'ChIJ0ZzjKTzwZTURQs1B8rhkTJI';
            me.travleMode='TRANSIT';
          } 
            
        		 
          me.route();
        });

      };

      AutocompleteDirectionsHandler.prototype.route = function() {
        if (!this.originPlaceId || !this.destinationPlaceId) {
          return;
        }
        var me = this;

        this.directionsService.route({
          origin: {'placeId': this.originPlaceId},
          destination: {'placeId': this.destinationPlaceId},
          travelMode: 'TRANSIT'
        }, function(response, status) {
          if (status === 'OK') {
            me.directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      };

      ///
      
    </script>
  
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCSnMW4kIIlD48ao8_Rf7pm9qs51WeCyIk&libraries=places&callback=initMap"
        async defer></script>
      
     <div class="row">
     	<div class="col-sm-8 col-sm-offset-2 col-xs-12">
  <img src="/resources/bootstrap/images/location2.PNG" style="margin-top:50px;margin-left:-10px; width:100%"/>
      <img src="/resources/bootstrap/images/location4.PNG" style="margin-top:30px; width:100%"/>
      <img src="/resources/bootstrap/images/location3.PNG" style="margin-bottom:100px;margin-top:30px; width:100%"/>
      </div>
      </div>
  </body>
</html> 
 <%----%> <%@include file="/WEB-INF/views/include/footer.jsp"%><!-- 이자리에 있어야 아래 slider관련 동작한다.-->
    <%@include file="/WEB-INF/views/include/footer2.jsp"%><!-- 이자리에 있어야 아래 slider관련 동작한다.--> 