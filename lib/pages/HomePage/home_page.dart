import 'dart:convert';

import 'package:fasal_app/pages/HomePage/Components/Options/homepage_options.dart';
import 'package:fasal_app/pages/HomePage/Components/Progress/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todayTask;
  getCurrentStep() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final prevDate = prefs.getString('startDate');
    final plan = prefs.getString('cropPlan');
    if (plan != null && prevDate != null) {
      DateTime previousDate = DateTime.parse(prevDate);
      DateTime currentDate = DateTime.now();

      int differenceInDays = currentDate.difference(previousDate).inDays;
      List<dynamic> steps = jsonDecode(plan);
      setState(() {
        todayTask = steps[differenceInDays];
      });
    }
  }

  void initState() {
    getCurrentStep();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 251, 234),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(left: 24, top: 16, right: 24),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hello Abhinav 👋",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 52, 78, 65),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            todayTask == null
                                ? const Text(
                                    "No Crop Plans Created",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 64, 99, 82),
                                    ),
                                  )
                                : const Text(
                                    "Today's Task",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 64, 99, 82),
                                    ),
                                  )
                          ]),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  todayTask == null
                      ? Text('')
                      : ProgressCard(
                          todayTask: todayTask,
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  HomepageOptions()
                ]))));
  }
}
