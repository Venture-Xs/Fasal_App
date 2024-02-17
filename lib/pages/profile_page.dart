import 'dart:convert';

import 'package:fasal_app/pages/ProgressPage/progress.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<dynamic> steps = [];
  String? currentCrop;

  getPlan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final plan = prefs.getString('cropPlan');
    currentCrop = prefs.getString('currentCrop');
    setState(() {
      if (plan != null) {
        steps = jsonDecode(plan);
      }
    });
  }

  void initState() {
    getPlan();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: steps.isEmpty
          ? const CircularProgressIndicator(
              color: Color.fromARGB(255, 209, 229, 143),
            )
          : Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: SingleChildScrollView(
                child: Column(children: [
                  Text(
                    "$currentCrop Cultivation Plan",
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 52, 78, 65)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 100,
                    child: ListView.builder(
                      itemCount: steps.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CalenderTile(
                            date: DateFormat('dd/MM/yy').format(DateTime.now()
                                .add(Duration(days: steps[index]["day"] - 1))),
                            content: steps[index]["instructions"],
                            completed: false,
                            title: "    ---     ${steps[index]["title"]}");
                      },
                    ),
                  ),
                ]),
              )),
    );
  }
}
