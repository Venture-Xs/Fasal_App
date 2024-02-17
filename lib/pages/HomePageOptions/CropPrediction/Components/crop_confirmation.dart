import 'dart:convert';

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
    print(res["detailed_cultivation_guide"][19]);
    setState(() {
      steps = res["detailed_cultivation_guide"];
    });
  }

  void initState() {
    getPlan();
  }

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
                      const Text(
                        "Rice Cultivation Plan",
                        style: TextStyle(
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

//Widget for displaying the steps in the calender
class CalenderTile extends StatelessWidget {
  final String date;
  final String title;
  final String content;
  final bool completed;

  const CalenderTile(
      {super.key,
      required this.date,
      required this.content,
      required this.completed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ExpansionTile(
          title: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(completed ? Icons.check : Icons.schedule,
                      color: completed ? Colors.green : Colors.black, size: 20),
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: 10,
                    height: 10,
                  ),
                ),
                TextSpan(
                  text: date + title,
                  style: DefaultTextStyle.of(context).style,
                ),
              ],
            ),
          ),
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  content,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )),
          ],
        ));
  }
}
