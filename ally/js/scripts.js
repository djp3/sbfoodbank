
//Function to parse url in javascript
function getParameterByName(name, url) {
	if (!url) {
   		url = window.location.href;
	}
	name = name.replace(/[\[\]]/g, "\\$&");
   	var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"), results = regex.exec(url);
	if (!results) return null;
   	if (!results[2]) return '';
   	return decodeURIComponent(results[2].replace(/\+/g, " "));
};


//Stub for reverse_geocode
function reverse_geocode(address,myFunction){
	var geocoder = new google.maps.Geocoder();
	geocoder.geocode( { 'address': address}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			lat = parseFloat(results[0].geometry.location.lat());
			lng = parseFloat(results[0].geometry.location.lng());
			myFunction(lat,lng);
		}
		else{
			console.log("Reverse Geocode failed on"+address);
		}
	});
}



$ = jQuery.noConflict();
$(function(){
});
