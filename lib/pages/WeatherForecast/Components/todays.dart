import 'package:flutter/material.dart';

class TodaysWeather extends StatefulWidget {
  const TodaysWeather({super.key});

  @override
  State<TodaysWeather> createState() => _TodaysWeatherState();
}

class _TodaysWeatherState extends State<TodaysWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      height: 200,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(184, 72, 108, 255),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // SizedBox(
        //   height: 10,
        // ),
        Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Today, 19th Feb",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text("Suny Vibes",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
          ],
        ),

        SizedBox(width: 30),
        Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "25°C",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.sunny,
              color: Colors.white,
              size: 40,
            )
          ],
        ),
      ]),
    );
  }
}
