window.addEventListener('DOMContentLoaded', function () {
    const widgetContainer = document.getElementById('widget-container');
    const weatherIconElement = document.getElementById('weather-icon');
    const temperatureElement = document.getElementById('temperature');
    const descripcionElement = document.getElementById('description');

    widgetContainer.addEventListener('mouseover', function () {
        widgetContainer.style.transform = 'scale(1.05)';
        widgetContainer.style.boxShadow = '0 8px 12px rgba(0, 0, 0, 0.2)';
    });

    widgetContainer.addEventListener('mouseout', function () {
        widgetContainer.style.transform = 'scale(1)';
        widgetContainer.style.boxShadow = '0 4px 6px rgba(0, 0, 0, 0.1)';
    });
    obtenerDescripcionClima();

    function obtenerDescripcionClima() {
        const temperatura = 44; // Obtén la temperatura deseada 

        let descripcion;
        let weatherIcon = '';

        if (temperatura < 10) {
            descripcion = 'Nublado';
            weatherIcon =
                'https://th.bing.com/th/id/R.23b75df0fcce44a43cde3b7ee16c6c73?rik=XWIPjonpW4%2fe3Q&pid=ImgRaw&r=0';
        } else if (temperatura >= 10 && temperatura <= 30) {
            descripcion = 'Soleado';
            weatherIcon =
                'https://3.bp.blogspot.com/-UeTEaf_sJSc/UKemKE9BQaI/AAAAAAABQ14/sdEph3T-jt0/s1600/Amanecer-en-el-cielo-Sunset-nubes-y-el-sol-resplandeciente.jpg';
        } else {
            descripcion = 'Tormentoso';
            weatherIcon =
                'https://th.bing.com/th/id/R.80c778c5a5d89152caa72dbe991e0e4e?rik=GI1GyPD1f12qKA&riu=http%3a%2f%2fnjgp.files.wordpress.com%2f2011/11%2fdsc_2970.jpg&ehk=ixBUfAmH9qDCQcTJrEMzL1JkiqsaPiWID%2fdmbf3x5aY%3d&risl=&pid=ImgRaw&r=0';
        }

        descripcionElement.textContent = descripcion;
        temperaturaElement.textContent = temperatura + '°C';
        weatherIconElement.style.backgroundImage = `url(${weatherIcon})`;
    }
});



