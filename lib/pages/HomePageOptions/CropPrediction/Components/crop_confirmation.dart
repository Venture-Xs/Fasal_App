import 'dart:convert';
import 'package:fasal_app/pages/ProgressPage/progress.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fasal_app/API/gpt.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class CropConfirmation extends StatefulWidget {
  String name;
  CropConfirmation({super.key, required this.name});

  @override
  State<CropConfirmation> createState() => _CropConfirmationState();
}

class _CropConfirmationState extends State<CropConfirmation> {
  //List of Steps
  List<dynamic> steps = [];

  getPlan() async {
    AIService ai = AIService();
    final res = jsonDecode(await ai.planCrop(widget.name));
    setState(() {
      steps = res["detailed_cultivation_guide"];
    });
  }

  confirmPlan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('cropPlan', jsonEncode(steps));
    await prefs.setString(
        'startDate', DateFormat('yyyy-MM-dd').format(DateTime.now()));
    await prefs.setString('currentCrop', widget.name);

    Navigator.popUntil(
        context, ModalRoute.withName(Navigator.defaultRouteName));
  }

  void initState() {
    getPlan();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: steps.isEmpty
            ? null
            : InkWell(
                onTap: confirmPlan,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 181, 203, 126),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: const Text(
                    "Confirm",
                    style: TextStyle(
                        color: Color.fromARGB(255, 74, 90, 34), fontSize: 15),
                  )),
                ),
              ),
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
          title: const Center(
              child: Text(
            "Fasal",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
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
        body: Center(
          child: steps.isEmpty
              ? const CircularProgressIndicator(
                  color: Color.fromARGB(255, 209, 229, 143),
                )
              : Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Text(
                        "${widget.name} Cultivation Plan",
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
                                date: DateFormat('dd/MM/yy').format(
                                    DateTime.now().add(
                                        Duration(days: steps[index]["day"]))),
                                content: steps[index]["instructions"],
                                completed: false,
                                title: "    ---     ${steps[index]["title"]}");
                          },
                        ),
                      ),
                    ]),
                  )),
        ));
  }
}
