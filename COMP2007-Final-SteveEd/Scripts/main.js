

$(document).ready(function() {

    //FOOTER push footer to bottom of page
    var docHeight = $(window).height();
    var footerHeight = $('#footer').height();
    var footerTop = $('#footer').position().top + footerHeight;

    if (footerTop < docHeight) {
        $('#footer').css('margin-top',10 + (docHeight - footerTop) + 'px');
    }


    //SIDEBAR add elipses when campaign name is too long
    var MAXCHAR = 12;
    var listItems = $("#sidebar li a");
    listItems.each(function (a) {
        if ($(this).text().length >= MAXCHAR) {
            var string = $(this).text().substring(0, MAXCHAR) + "...";
            $(this).text(string);
        }
    });

    //SIDEBAR toggle it to minimize and maximize
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#sidenavwrapper").toggleClass("active");
    });

    $('.carousel').carousel({
        pause: true,
        interval: false
    });

});

