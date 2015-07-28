
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
    $("#wrapper").toggleClass("active");
});