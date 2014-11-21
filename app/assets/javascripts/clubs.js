$(function() {
  $(".choose").click(function(event) {
    event.preventDefault();
    // select the (grand)parent div of `this` with a class of club
    // add a class of `chosen` to that div
    var $club = $(this).parents(".club");
    var $form = $(this).parents("form");
    $club.addClass("chosen");
    $.ajax($form.attr("action"), {
      type: "POST"
    });
  });
});
