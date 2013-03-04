lineSymbol =
  path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
  scale: 4
dotSymbol =
  path: google.maps.SymbolPath.CIRCLE
  strokeColor: '#000000'
  scale: 4

course500mCoordinates = [new google.maps.LatLng(51.707044, 6.163867), new google.maps.LatLng(51.705226, 6.162429), new google.maps.LatLng(51.705226, 6.162445), new google.maps.LatLng(51.705408, 6.161914), new google.maps.LatLng(51.705226, 6.162445), new google.maps.LatLng(51.706901, 6.163716), new google.maps.LatLng(51.706941, 6.163287), new google.maps.LatLng(51.706688, 6.163008)]
course5kmCoordinates  = [new google.maps.LatLng(51.707592,6.164103),new google.maps.LatLng(51.705226,6.162429),new google.maps.LatLng(51.706369,6.159167), new google.maps.LatLng(51.70722,6.160326),new google.maps.LatLng(51.707326,6.161785),new google.maps.LatLng(51.708842,6.16215),new google.maps.LatLng(51.709175,6.164875),new google.maps.LatLng(51.706994,6.163909),new google.maps.LatLng(51.70089,6.159081),new google.maps.LatLng(51.69992,6.158931),new google.maps.LatLng(51.700299,6.157327),new google.maps.LatLng(51.69983,6.157022),new google.maps.LatLng(51.699447,6.158556),new google.maps.LatLng(51.699105,6.158432),new google.maps.LatLng(51.699181,6.15803),new google.maps.LatLng(51.698453,6.157762),new google.maps.LatLng(51.698197,6.158904),new google.maps.LatLng(51.699843,6.159393),new google.maps.LatLng(51.698646,6.164811),new google.maps.LatLng(51.705106,6.170433),new google.maps.LatLng(51.706196,6.166978),new google.maps.LatLng(51.709414,6.166935),new google.maps.LatLng(51.709161,6.164811),new google.maps.LatLng(51.706901,6.163716),new google.maps.LatLng(51.706941,6.163287),new google.maps.LatLng(51.706688,6.163008)]
course3kmCoordinates  = [new google.maps.LatLng(51.707592,6.164103),new google.maps.LatLng(51.70089,6.159081),new google.maps.LatLng(51.69992,6.158931),new google.maps.LatLng(51.698646,6.164811),new google.maps.LatLng(51.705106,6.170433),new google.maps.LatLng(51.706196,6.166978),new google.maps.LatLng(51.709414,6.166935),new google.maps.LatLng(51.709161,6.164811),new google.maps.LatLng(51.706901,6.163716),new google.maps.LatLng(51.706941,6.163287),new google.maps.LatLng(51.706688,6.163008)]
course10kmCoordinates = [new google.maps.LatLng(51.707592,6.164103),new google.maps.LatLng(51.70089,6.159081),new google.maps.LatLng(51.69992,6.158931),new google.maps.LatLng(51.700299,6.157327),new google.maps.LatLng(51.69983,6.157022),new google.maps.LatLng(51.699447,6.158556),new google.maps.LatLng(51.699105,6.158432),new google.maps.LatLng(51.699181,6.15803),new google.maps.LatLng(51.698453,6.157762),new google.maps.LatLng(51.698197,6.158904),new google.maps.LatLng(51.699843,6.159393),new google.maps.LatLng(51.698646,6.164811),new google.maps.LatLng(51.705106,6.170433),new google.maps.LatLng(51.706196,6.166978),new google.maps.LatLng(51.709414,6.166935),new google.maps.LatLng(51.709161,6.164811),new google.maps.LatLng(51.707592,6.164103),new google.maps.LatLng(51.70089,6.159081),new google.maps.LatLng(51.69992,6.158931),new google.maps.LatLng(51.699843,6.159393),new google.maps.LatLng(51.698646,6.164811),new google.maps.LatLng(51.705106,6.170433),new google.maps.LatLng(51.706196,6.166978),new google.maps.LatLng(51.709414,6.166935),new google.maps.LatLng(51.709161,6.164811),new google.maps.LatLng(51.707592,6.164103),new google.maps.LatLng(51.70089,6.159081),new google.maps.LatLng(51.69992,6.158931),new google.maps.LatLng(51.699843,6.159393),new google.maps.LatLng(51.698646,6.164811),new google.maps.LatLng(51.705106,6.170433),new google.maps.LatLng(51.706196,6.166978),new google.maps.LatLng(51.709414,6.166935),new google.maps.LatLng(51.709161,6.164811),new google.maps.LatLng(51.706901,6.163716),new google.maps.LatLng(51.706941,6.163287),new google.maps.LatLng(51.706688,6.163008)]

course = {}
course["5km"] =
  coordinates: course5kmCoordinates
  dotRepeat: '20%'
  animationTime: 15
course["500m"] =
  coordinates: course500mCoordinates
  dotRepeat: ''
  animationTime: 5
course["10km"] =
  coordinates: course10kmCoordinates
  dotRepeat: '10%'
  animationTime: 10
course["3km"] =
  coordinates: course3kmCoordinates
  dotRepeat: '33.3333%'
  animationTime: 20


initialize = ->
  if div=$("#map_canvas")[0]
    c=course[$(div).data("course")]
    mapOptions =
      center: new google.maps.LatLng(51.702672,6.165133)
      zoom: 15
      mapTypeId: google.maps.MapTypeId.ROADMAP

    map = new google.maps.Map(div, mapOptions)  


    coursePath = new google.maps.Polyline(
      path: c.coordinates
      strokeColor: "#FF0000"
      strokeOpacity: 1.0
      strokeWeight: 2
      icons: [{icon: lineSymbol,offset: '0%'}, {icon: dotSymbol,repeat: c.dotRepeat, offset: '0%'}]
    )
    coursePath.setMap map
    window.coursePath = coursePath 
    animateCircle(c.animationTime)  

animateCircle = (time) ->
  count = 0
  offsetId = window.setInterval(->
    count = count + 1  if count < 499
    icons = window.coursePath.get("icons")
    icons[0].offset = (count/5.0) + "%"
    window.coursePath.set "icons", icons
  , time)


$ ->
  initialize()
