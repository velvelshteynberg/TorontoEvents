var geocoder;
  var map;
  function initialize() {
    geocoder = new google.maps.Geocoder();
    codeAddress();
    //var latlng = new google.maps.LatLng(-34.397, 150.644);
 
  }

  function codeAddress() {
    var address = document.getElementById('address').innerText;
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == 'OK') {
    var mapOptions = {
      zoom: 15,
     center: results[0].geometry.location
    }
    map = new google.maps.Map(document.getElementById('map'), mapOptions);
        map.setCenter(results[0].geometry.location);
        console.log(results[0].geometry.location)
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location
        });
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }
  document.addEventListener('DOMContentLoaded', ()=> {
      initialize();
      //codeAddress();
  })