$(document).ready(function () {
    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');
    var selectedMarker = null;
    var markers = [];
    var isDrawing = false;


    function drawLine(x1, y1, x2, y2) {
        ctx.beginPath();
        ctx.moveTo(x1, y1);
        ctx.lineTo(x2, y2);
        ctx.strokeStyle = 'black';
        ctx.lineWidth = 1;
        ctx.stroke();
    }


    $('.map-container').on('click', '.name-marker', function (event) {
        var clickedMarker = $(this);


        if (isDrawing) {
            var startX = parseFloat(selectedMarker.css('left')) + selectedMarker.width() / 2;
            var startY = parseFloat(selectedMarker.css('top')) + selectedMarker.height() / 2;
            var endX = parseFloat(clickedMarker.css('left')) + clickedMarker.width() / 2;
            var endY = parseFloat(clickedMarker.css('top')) + clickedMarker.height() / 2;

            drawLine(startX, startY, endX, endY);

            selectedMarker = null;
            isDrawing = false;
        } else {
            selectedMarker = clickedMarker;
            isDrawing = true;
        }
    });

    function drawRoute() {
        canvas.width = $('.map-container').width();
        canvas.height = $('.map-container').height();
        canvas.width = 600;
        canvas.height = 400;

        var width = canvas.width;
        var height = canvas.height;

        ctx.clearRect(0, 0, width, height);

        var selectedMunicipios = $('#mySelect option:selected');


        markers = [];
        $('.name-marker.added-marker').remove();
        ctx.clearRect(0, 0, width, height);

        selectedMunicipios.each(function (index) {
            var option = $(this);
            var value = parseInt(option.val());

            var x = Math.random() * (width - 50);
            var y = Math.random() * (height - 50);

            var marker = {
                name: option.text(),
                x: x,
                y: y
            };

            markers.push(marker);
        });

        markers.forEach(function (marker) {
            var markerElement = $('<div class="name-marker added-marker" data-name="' + marker.name + '">' + marker.name + '</div>');
            markerElement.css('top', marker.y + 'px');
            markerElement.css('left', marker.x + 'px');

            var markerIcon = $('<i class="fas fa-map-marker-alt marker-icon"></i>');
            markerElement.append(markerIcon);

            $('.map-container').append(markerElement);
        });
    }

    $('#mySelect option').prop('selected', false);

    $('#mySelect').multiSelect({
        afterSelect: function () {
            drawRoute();
        },
        afterDeselect: function () {
            drawRoute();
        }
    });

    drawRoute();

});




