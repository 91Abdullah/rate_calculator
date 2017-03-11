$(document).ready(function() {
    $("#add-rate").on("click", function(e) {
        e.preventDefault();
        $(".add-rate").append("<div class='add-rate-item'>" + $(".add-rate-item").html() + "</div>");
        console.log("clicked");
    });
});