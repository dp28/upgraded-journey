// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

function initMap() {
  if (window.startMap) {
    window.startMap();
  }
}

function addMap(namedLocations, id) {
  id = id || 'map'
  var firstLocationName = Object.keys(namedLocations)[0];

  var map = new google.maps.Map(document.getElementById(id), {
    center: namedLocations[firstLocationName],
    zoom: 12
  });

  Object.keys(namedLocations).forEach(function(name) {
    new google.maps.Marker({
      position: namedLocations[name],
      map: map,
      label: name
    });
  })
}
