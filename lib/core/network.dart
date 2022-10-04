const baseUrl = 'https://api.openweathermap.org/data/2.5';

const apiKey = '22613f40736be75255605796f09d5603';

String getWeatherByNameUrl({required cityName}) =>
    '$baseUrl/weather?q=$cityName&appid=$apiKey';
