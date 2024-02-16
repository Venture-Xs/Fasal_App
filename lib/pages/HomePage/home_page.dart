import 'package:fasal_app/pages/HomePage/Components/progress_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 16, right: 24),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Column(
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
                            SizedBox(
                              height: 5,
                            ),
                            Row(children: [
                              Icon(Icons.location_on,
                                  size: 24,
                                  color: Color.fromARGB(255, 52, 78, 65)),
                              Text("Location",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 52, 78, 65))),
                              SizedBox(width: 6),
                            ]),
                            SizedBox(
                              width: 280,
                              child: Text(
                                "Kochi,Kerala",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 123, 156, 41),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProgressCard(),
                ]))));
  }
}
