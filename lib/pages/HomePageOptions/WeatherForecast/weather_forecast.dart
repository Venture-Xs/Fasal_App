import 'package:fasal_app/pages/HomePageOptions/WeatherForecast/Components/humidity_status.dart';
import 'package:fasal_app/pages/HomePageOptions/WeatherForecast/Components/todays.dart';
import 'package:flutter/material.dart';

class WeatherForecast extends StatefulWidget {
  const WeatherForecast({super.key});

  @override
  State<WeatherForecast> createState() => _WeatherForecastState();
}

class _WeatherForecastState extends State<WeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Center(child: Text("Fasal")),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_sharp,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        ),
        backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TodaysWeather(),
                SizedBox(
                  height: 20,
                ),
                HumidityStatus(),
              ],
            ),
          ),
        ));
  }
}
