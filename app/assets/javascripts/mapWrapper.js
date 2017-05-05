var MapWrapper = function(container, coords, zoom){
  this.googleMap = new google.maps.Map(container, {
    center: coords,
    zoom: zoom
  });
  this.transportMethod = 'DRIVING';
  //this.origin = null;
  //this.route = null;
}

MapWrapper.prototype ={
  addMarker: function(coords){
    var marker = new google.maps.Marker({
      position: coords,
      map: this.googleMap,
      animation: google.maps.Animation.DROP
    });
    return marker;
  },

  addOriginClickEvent: function () {
    var originListener = google.maps.event.addListener(this.googleMap, 'click', function (event) {
      var originLatitude = event.latLng.lat();
      var originLongitude = event.latLng.lng();
      //this.origin = {lat: originLatitude, lng: originLongitude};
      var marker = this.addMarker({lat: originLatitude, lng: originLongitude});
      google.maps.event.removeListener(originListener);
   }.bind(this));
 },

  addDestinationClickEvent: function () {
    var destinationListener = google.maps.event.addListener(this.googleMap, 'click', function (event){
      var destinationLatitude = event.latLng.lat();
      var destinationLongitude = event.latLng.lng();
      var marker = this.addMarker({lat: destinationLatitude, lng: destinationLongitude});
      google.maps.event.removeListener(destinationListener);  
   }.bind(this));
 }
}

module.exports = MapWrapper;