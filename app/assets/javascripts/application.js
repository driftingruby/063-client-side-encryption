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
//= require bootstrap-sprockets
//= require jsencrypt
//= require_tree .

$(document).on('turbolinks:load', function(){
  $('form').submit(function( event ) {
    var encrypt = new JSEncrypt();
    $('[data-encrypt]').each(function(){
      unencrypted = $(this);
      encrypt.setKey($('#public_key').val());
      encrypted = encrypt.encrypt(unencrypted.val());
      if (encrypted != false) {
        unencrypted.val(encrypted);
      }  
    })
    // event.preventDefault();
  });
});