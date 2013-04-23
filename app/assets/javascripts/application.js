// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  $(".button").on("click", function() {
    if(document.getElementById("email").value == "") {
      alert("Please provide a valid email!")
      return false;
    }
    else {
      var selected = new Array();
      $('input:checked').each(function() {
        selected.push($(this).attr('name'));
      });
      var route = "";
      if($(this).attr("id")=="search_button"){
        route = "/search"
        action = "#success_search"
      }else{
        route = "/add"
        action = "#success_add"
      }
      $.post( route, 
              {"cards":selected, "email":$("#email").val()}, 
              function (data) {
        if(data=="true"){
          console.log("success");
          $(action).modal('show');
        }else{
          console.log("error");
        }
      })
    }
  })
});