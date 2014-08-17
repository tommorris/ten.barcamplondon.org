//= require_tree "./libs"
//= require "./plugins"

$(document).ready(function() {

  var options = {
    offset: '.main',
    throttle: 250,
    onInit: function() {
      $('.headhesive img').attr('src', '/images/logo-white.png');
    },
  };

  var stickyHeader = new Headhesive('.header-wrapper', options);

});
