$(function() {
    return $.ajax("markers.json", {
      type: "GET",
      dataType: 'json',
      data: 'markers',
      error: function(jqXHR, textStatus, errorThrown) {
        return console.log("AJAX Error: " + textStatus);
      },
      success: function(data, textStatus, jqXHR) {
       for (var i = 0; i < data.length; i++) {
          var lat = parseFloat(data[i].lat);
          var lng = parseFloat(data[i].lng);
          var point = new google.maps.LatLng(lat,lng);
          var marker = createMarker(point,data[i].id,"",data[i].icon,data[i].lat,data[i].lng,data[i].name,data[i].rating);
       }

        return console.log("Markers.init() ok!");
      }
    });

});

