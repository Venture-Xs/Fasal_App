import 'package:fasal_app/pages/HomePage/Components/Options/homepage_options.dart';
import 'package:fasal_app/pages/HomePage/Components/Progress/progress_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                            Text(
                              "Hello Abhinab",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 52, 78, 65),
                              ),
                            ),
                          ]),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProgressCard(),
                  SizedBox(height: 20),
                  HomepageOptions()
                ]))));
  }
}
