$("#shortnerUrl").hide();
$("#error_msg").hide();
$("form#shortnerForm").keyup(function(e)
{
    $("#error_msg").fadeOut();
});

var values = window.localStorage.getItem('shortnerForm');
console.log("values : ");
console.log(values);
if(values != null){
  submit_form(values);
}

$("#shortnerForm").submit(function( event ) {
  console.log( "Handler for .submit() called." );
  console.log("data : " + $('form#shortnerForm').serialize());
  window.localStorage.setItem('shortnerForm', '');
  window.localStorage.setItem('shortnerForm', $('form#shortnerForm').serialize());
  submit_form($('form#shortnerForm').serialize());
  event.preventDefault();
});

function submit_form(values){
  $.ajax({
    url: "/api/urls/shortner",
    type: 'POST',
    data: values,
    success: function(result) {
      console.log(result);
      $("#shortnerUrl").empty();
      $("#shortnerUrl").append("Short Url : " + "<i>" + result.short_url + "</i>").fadeIn("slow");
      window.localStorage.removeItem('shortnerForm');
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
}




 