

$(document).ready(function() {

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

    $("#charactersFormToggle").click(function (e) {
        var pageButtons = document.getElementById("charactersForm").getElementsByTagName('span')[0];
        var icon = document.getElementById("charactersFormToggle").getElementsByTagName('i')[0];
        pageButtons.style.display = (pageButtons.style.display == "inline") ? "none" : "inline";

        document.getElementById('default_char').style.display = (document.getElementById('default_char').style.display == "table") ? "none" : "table";
        icon.className = (icon.className == "fa fa-plus-square") ? "fa fa-minus-square" : "fa fa-plus-square";
    });
});

