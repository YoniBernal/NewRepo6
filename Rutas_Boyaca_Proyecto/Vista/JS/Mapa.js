$(document).ready(function () {
    $("area").click(function (e) {
        e.preventDefault();
        var id = $(this).data("id");
        var url = "Municipio_B.aspx?idMunicipio=" + id;
        window.open(url, "_self");
    });
});



