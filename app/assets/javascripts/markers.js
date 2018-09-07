
function createMarker(latlng,name,html,icon,lat,lng,name,rating) {
    var marker = new google.maps.Marker({
      position: latlng,
      id:name,
      icon: icon,
      lat:lat,
      lng:lng,
      map:map,
      zIndex: Math.round(latlng.lat()*-100000)<<5
    });


    google.maps.event.addListener(marker, 'click', function() {
      if (typeof infoBubble != "undefined") {
        if (infoBubble.isOpen()) {
          infoBubble.close();
        }
      } 
       infoBubble = new InfoBubble();
    
        // $.get("marker_info/"+marker.id, function (j){
          if (!infoBubble.isOpen()) {
             infoBubble.open(map, marker);
             infoBubble.addTab('Tab',"hello world");  
            }
        // });
    });
    gmarkers.push(marker);
} 