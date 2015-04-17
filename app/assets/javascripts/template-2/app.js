/**
 * Initializing and appending google map
 */

function initialize() {
  var mapProp = {
    center: new google.maps.LatLng(30.0097495, 31.41625),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("google-map"), mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
