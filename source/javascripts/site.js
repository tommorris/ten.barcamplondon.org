//= require_tree "./libs"

$(document).ready(function() {

  var options = {
    offset: 500,
    throttle: 250,
    onInit: function() {
      $('.headhesive img').attr('src', '/images/logo-white.png');
    },
  };

  var stickyHeader = new Headhesive('.header-wrapper', options);

});
