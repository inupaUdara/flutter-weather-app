class Weather {
  final String cityName;
  final double temperaure;
  final String mainCondition;

  Weather({
    required this.cityName,
    required this.temperaure,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperaure: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
