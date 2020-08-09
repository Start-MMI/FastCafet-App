$(".menu-toggle").on('click', function() {
  $(this).toggleClass("on");
  $('.menu-section').toggleClass("on");
  $('ul').toggleClass('hidden');
});


$(".buttonH").on('click', function() {
    $('.menu-toggle').toggleClass("on");
    $('.menu-section').toggleClass("on");
    $('ul').toggleClass('hidden');
});

$(".ok").on('click', function() {
    $('.menu-toggle').toggleClass("on");
    $('.menu-section').toggleClass("on");
    $('ul').toggleClass('hidden');
});