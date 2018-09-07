var gmarkers = [];
var map;
var userLocation = {};


function initMap(){
  var myOptions = {
    zoom: 12,
    center: new google.maps.LatLng(51.0486,-114.0708),
    mapTypeControl: true,
    disableDefaultUI: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById("gmap"), myOptions);
}

$( document ).on('ready', function() {
    // initialization of go to
    $.HSCore.components.HSGoTo.init('.js-go-to');

    // initialization of tabs
    $.HSCore.components.HSTabs.init('[role="tablist"]');

    // initialization of rating
    $.HSCore.components.HSRating.init($('.js-rating'), {
      spacing: 2
    });

    
    getLocation();

    $('.js-mega-menu').HSMegaMenu({
      event: 'hover',
      pageContainer: $('.container'),
      breakpoint: 991
    });

    $.HSCore.components.HSHeader.init($('#js-header'));
    $.HSCore.helpers.HSHamburgers.init('.hamburger');

    $(window).on('resize', function () {
      setTimeout(function () {
        $.HSCore.components.HSTabs.init('[role="tablist"]');
      }, 200);
    });

 });



function getLocation(){
  $.getJSON("http://ip-api.com/json", function (data) {

    userLocation = data;

    if(data.city && data.region && data.zip){
      $("#search").val(data.city+', '+data.region+', '+data.zip)
    }

    $("#location").append("   "+data.city+", "+data.regionName);

  });

}