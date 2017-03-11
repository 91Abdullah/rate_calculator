

$(document).ready(function () {
    var options = {
        url: "json/cities.json",
        getValue: "name",
        list: {
            match: {
                enabled: true
            }
        }
    };
    $(".auto-complete").easyAutocomplete(options);

    $("#calculate-rate").on("submit", function (e) {
        e.preventDefault();
        $.ajax({
            url: "api/rates",
            data: {
                from_city: $("#from_city").val().trim(),
                to_city: $("#to_city").val().trim(),
                weight: $("#weight").val().trim(),
                volume: $("#volume").val().trim()
            },
            dataType: "JSON",
            method: "POST",
            success: function (data, status) {
                //console.log(status);
                //console.log(data);
                data.forEach((item, index) => {
                    var element = "<div class='col-xs-12 col-md-6'><div class='panel panel-primary'><div class='panel-heading'><h5 class='text-center'>" + item.delivery_type + "</div><div class='panel-body'><p class='text-editor'>"+ item.description +"</p><hr><p><span class='rate-label'>Rate: </span><span class='rate'>"+ item.price +"</span> PKR</p></div></div></div>"
                    $(".item-parent").append(element);
                    //console.log(item);
                });
            },
            error: function(err) {
                console.log(err);
            }
        })
    });
});