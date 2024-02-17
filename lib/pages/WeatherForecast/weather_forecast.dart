import 'package:fasal_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/weather.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  final WeatherFactory wf = new WeatherFactory(OPEN_WEATHER_API_KEY);
  Weather? _weather;

  void initState() {
    super.initState();
    wf.currentWeatherByCityName("Kollam").then((value) {
      setState(() {
        _weather = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _weather == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: Color.fromARGB(255, 209, 229, 143),
                ),
              )
            : SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
<<<<<<< Updated upstream:lib/pages/WeatherForecast/weather_forecast.dart
                    SizedBox(
                      height: 20,
                    ),
=======
                    SizedBox(height: 20,),

>>>>>>> Stashed changes:lib/pages/HomePageOptions/WeatherForecast/weather_forecast.dart
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Today's Weather:",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
<<<<<<< Updated upstream:lib/pages/WeatherForecast/weather_forecast.dart
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      _weather?.areaName ?? "Error",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
=======
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text(
                          _weather?.areaName ?? "Error",
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ]),
>>>>>>> Stashed changes:lib/pages/HomePageOptions/WeatherForecast/weather_forecast.dart
                    ),
                    _weatherIcon(),
                    SizedBox(
                      height: 10,
                    ),
                    _temperature(),
                    const SizedBox(
                      height: 10,
                    ),
                    _extraInfo(),
                    const SizedBox(
                      height: 10,
                    ),
                    _dateTimeInfo(),
                  ],
                ),
              ));
  }

  //Time and Date
  Widget _dateTimeInfo() {
    DateTime now = _weather!.date!;
    return Column(
      children: [
        //Time
        Text(DateFormat("h:mm a").format(now),
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500)),

        SizedBox(height: 10),

        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //time
            Text(DateFormat("EEEE").format(now),
                style: TextStyle(fontWeight: FontWeight.w700)),

            Text("  ${DateFormat("d.m.y").format(now)}",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }

  //Weather Icon
  Widget _weatherIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://openweathermap.org/img/wn/${_weather?.weatherIcon}@4x.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          _weather?.weatherDescription ?? "",
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  //Temperature
  Widget _temperature() {
    return Text(
      "${_weather?.temperature?.celsius?.toStringAsFixed(0)} °C",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
    );
  }

  //Extra Info
  Widget _extraInfo() {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.15,
      width: MediaQuery.sizeOf(context).width * 0.80,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 72, 255, 167),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MAX : ${_weather?.tempMax?.celsius?.toStringAsFixed(0)}"),
                Text("Wind Speed : ${_weather?.windSpeed?.toStringAsFixed(0)}")
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MIN : ${_weather?.tempMin?.celsius?.toStringAsFixed(0)}"),
                Text("Humidity : ${_weather?.humidity?.toStringAsFixed(0)}")
              ],
            )
          ]),
    );
  }
}
