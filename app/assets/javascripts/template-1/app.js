/**
 * Collapsing nav when scrolling
 */

$(window).scroll(function() {
  if ($(".navbar").offset().top > 50) {
    $(".navbar-fixed-top").addClass("top-nav-collapse");
  } else {
    $(".navbar-fixed-top").removeClass("top-nav-collapse");
  }
});

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
  $('a.page-scroll').bind('click', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: $($anchor.attr('href')).offset().top
    }, 1500, 'easeInOutExpo');
    event.preventDefault();
  });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
  $('.navbar-toggle:visible').click();
});

/*
 * Initializing owl carousel on catalouge items
 */
 $(document).ready(function(){
  $(".owl-carousel").owlCarousel();
 });

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
