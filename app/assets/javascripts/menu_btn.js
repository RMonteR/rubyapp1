// #quando clicchi su button
// # togli classe d-none quando clicco su pulsante
// # metti content su col-8
// # check https://developer.mozilla.org/en-US/docs/Web/API/Element/classList

const $menuBtn = $("#menu-btn");

// if viewport is less than md:

  $menuBtn.on("click", function() {
    $("#removable-sidebar").removeClass(".d-none");
    $("#removable-sidebar").addClass(".col-4");
    $(".content").addClass("col-8");
    });

//  remove background-color for .button-col    
