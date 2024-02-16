import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
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
        body: const Center(
          child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CalenderTile(
                      date: " 10/03/2024",
                      title: "    ---     Soil preparation",
                      completed: true,
                      content:
                          "Begin soil preparation by plowing the rice fields to a depth of at least 15-20 centimeters using a tractor or plow, ensuring thorough soil aeration and weed incorporation. Subsequently, harrow the soil to break up clods and create a fine tilth suitable for rice seedbed establishment."),
                  SizedBox(height: 15),
                  CalenderTile(
                      date: " 11/03/2024",
                      title: "    ---     Fertilize the fields",
                      completed: false,
                      content:
                          " Utilize the Variable Rate Application technique for precise application of nitrogen (N), phosphorus (P), and potassium (K) fertilizers to ensure even distribution and maximum absorption by rice plants."),
                  SizedBox(height: 15),
                  CalenderTile(
                    date: " 12/03/2024",
                    title: "    ---     Water the fields",
                    completed: false,
                    content:
                        "Employ appropriate irrigation equipment such as furrow dikes or borders to guide the flow of water along designated channels, minimizing water wastage and ensuring uniform distribution across the field.",
                  ),
                  SizedBox(height: 15),
                  CalenderTile(
                      date: " 13/03/2024",
                      title: "    ---     Pest detection",
                      completed: false,
                      content:
                          "Utilize integrated pest management techniques to deploy pheromone traps, sticky traps, or light traps strategically across the fields to monitor pest populations and identify potential threats early on."),
                ],
              )),
        ));
  }
}

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
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
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
                          color: completed ? Colors.green : Colors.black,
                          size: 20),
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
                  child: Text(content),
                ),
              ],
            )));
  }
}
