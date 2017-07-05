$(document).ready(function() {
  $('.page-header').find('#sign-out').on('click', function() {
    console.log("Clicked");
    var alert = $('#body').find('#sign-out-alert');
    alert.removeClass("hidden"); 
  });
});
