$(document).ready(function() {
  console.log("Is this thing even on?");
  $('.page-header').find('#sign-out').on('click', function() {
    console.log("Clicked");
    var alert = $('#body').find('#sign-out-alert');
    alert.removeClass("hidden"); 
  });
});
