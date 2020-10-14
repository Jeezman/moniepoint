// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')

// $(document).ready(function() {
//     $('[data-js-hide-link]').click(function(event){
//       alert('You clicked the Hide link');
//       event.preventDefault(); 
//     });
//   }

$(function() {
    console.log('jquery don load')
    // $( "p" ).text( "The DOM is now loaded and can be manipulated." );
    var geoInput = $( "#geo-location" )
    function getLocation() {
        console.log('fetching geolocation')
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(showPosition);
        } else {
        geoInput.val("Geolocation is not supported by this browser")
        }
      }
      
      function showPosition(position) {
        let t = "Latitude: " + position.coords.latitude +
        ", Longitude: " + position.coords.longitude;
        geoInput.val(t)
      }

    $( "#geo-location" ).on("focus", getLocation);

    function cloneDiv() {
        let item = $('#location-fields');
        let wrap = $('#location-wrap-content')
        // console.log('item is ', item)
        item.clone().appendTo(wrap)
    }
    $('#location-btn').on("click", cloneDiv)
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
