$(document).ready(function () {
    $("a.card").click(function (e) {
        e.preventDefault();
        var id = $(this).data("id");
        console.log(id);
        var url = "InformacionProvincia.aspx?idProvincia=" + id;

        window.open(url, "_self");
    });
});