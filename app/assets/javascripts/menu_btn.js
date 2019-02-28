// #quando clicchi su button
// # togli classe d-none quando clicco su pulsante
// # metti content su col-8
// # check https://developer.mozilla.org/en-US/docs/Web/API/Element/classList

$(document).on('turbolinks:load', function() {
  const $menuBtn = $("#menu-btn");

  // if viewport is less than md:
  if (window.innerWidth <= 576) {
    $menuBtn.on("click", function() {
      $("#removable-sidebar").removeClass(".d-none");
      $("#removable-sidebar").addClass(".col-4");
      $(".content").addClass("col-8");
    });
  };
//  remove background-color for .button-col
});
