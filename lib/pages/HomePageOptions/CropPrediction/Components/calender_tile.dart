import 'package:flutter/material.dart';

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
