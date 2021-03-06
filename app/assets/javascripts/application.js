// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//
// Bootstrap
//= require jquery3
//= require popper
//= require bootstrap-sprockets
// 
// Select2
//= require select2
//= require_tree .
//= require serviceworker-companion


$( document ).on('turbolinks:load', function() {
  $(function() {
    setTimeout(function(){
      $('.alert').slideUp(500);
    }, 2500);
  });

  
  // Navbar
  $('.click_navbar .close').hide();
  $('nav').hide();
  $('.click_navbar').click(function() {
  	$('nav').toggle(300);
  	$('.click_navbar .close').toggle(200);
  	$('.click_navbar .open').toggle(200);
  });
});