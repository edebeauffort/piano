
/*#########################################################################*/
/*##################### SHOW & HIDE NAVBAR ON SCROLL ######################*/
/*#########################################################################*/

// Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var navbarHeight = $('.navbar-piano').outerHeight();

// 1. on scroll, let the interval function know the user has scrolled
$(window).scroll(function(event){
    didScroll = true;
});

// 2. run hasScrolled() and reset didScroll status
setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

// 3. To hide the header, we’ll determine the following:
function hasScrolled() {
  // storing the scrolling position into a variable
  var userScroll = $(this).scrollTop();

  // add and remove background color when on top of page
  if (userScroll >= 780) {
        $(".navbar-piano").addClass("nav-down");
    } else {
        $(".navbar-piano").removeClass("nav-down");
    }
  // If they scrolled down and are past the navbar, add class .nav-up.
  // This is necessary so you never see what is "behind" the navbar.
  if (userScroll > lastScrollTop && userScroll > navbarHeight){
      // SCROLL DOWN
      $('.navbar-piano').addClass('nav-up');

  }
  else {
      // SCROLL UP
      // If did not scroll past the document (possible on mac)...
    if (userScroll + $(window).height() < $(document).height()) {
      $('.navbar-piano').removeClass('nav-up');
      //else {$('.navbar').removeClass('nav-top');}
    }
  }
  lastScrollTop = userScroll;
}

/*#########################################################################*/
/*###################### SCROLL TO DIV ON CLICK ###########################*/
/*#########################################################################*/

$("#nav-recordings").click(function() {
    $('html,body').animate({
        scrollTop: $(".recordings").offset().top},
        'slow');
});

$("#nav-bio").click(function() {
    $('html,body').animate({
        scrollTop: $(".bio").offset().top},
        'slow');
});

$("#nav-events").click(function() {
    $('html,body').animate({
        scrollTop: $(".events").offset().top},
        'slow');
});
