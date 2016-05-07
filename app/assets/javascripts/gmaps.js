var marker;
var map;
function set_map(option, location, drag){
  var mapOptions = {
    center: new google.maps.LatLng(25.687944,-100.309403),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  state = "Tamil Nadu";
  city = "Chennai";
  address = state + ',' + city;
  if(option == 1) {
    var area = location;
    if(area != ""){
      address = address + ',' + area;
    }
  }
  var geocoder = new google.maps.Geocoder();
  geocoder.geocode({
    'address':address
  }, function(result, status){
    if (status == google.maps.GeocoderStatus.OK){
      map.setCenter(result[0].geometry.location);
      marker = new google.maps.Marker({
        map: map,
        position: result[0].geometry.location,
        draggable:drag
      });
      if(option == 2) {
        var locations = location.split(',');
        var lat = locations[0];
        var lng = locations[1];
        map.setCenter(new google.maps.LatLng(12.969390, 80.243851));
        marker.setPosition(new google.maps.LatLng(12.969390, 80.243851));
      }
      map.setZoom(16);
      marker.addListener('dragend',function(event) {
        alert("Lat: "+event.latLng.lat()+", Lng: "+event.latLng.lng());
    });
    }else{
      alert("Geocode was not successful for the following reason: " + status);
    }
  });
  return false;
}
