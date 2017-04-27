$("#shortnerUrl").hide();
$("#error_msg").hide();
$("form#shortnerForm").keyup(function(e)
{
    $("#error_msg").fadeOut();
});

$("#shortnerForm").submit(function( event ) {
  console.log( "Handler for .submit() called." );
  console.log("data : " + $('form#shortnerForm').serialize());
  event.preventDefault();

  $.ajax({
    url: "/api/urls/shortner",
    type: 'POST',
    data: $('form#shortnerForm').serialize(),
    success: function(result) {
      console.log(result);
      $("#shortnerUrl").empty();
      $("#shortnerUrl").append("Short Url : " + "<i>" + result.short_url + "</i>").fadeIn("slow");
    },
    error: function(result){
      console.log(result);
      errors = jQuery.parseJSON(result.responseText);
      var error_str = ""
      $.each( errors, function( index, value ){
          error_str += index.toString().toUpperCase() + " " + value + "<br/>";
      });
      $("#error_msg").empty();
      $("#error_msg").append(error_str).fadeIn("slow");
    }
  });
});