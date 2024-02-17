import 'package:flutter/material.dart';

class ResultTile extends StatefulWidget {
  String number;
  String name;
  String desc;
  ResultTile(
      {super.key,
      required this.number,
      required this.name,
      required this.desc});

  @override
  State<ResultTile> createState() => _ResultTileState();
}

class _ResultTileState extends State<ResultTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 209, 229, 143),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: [
        Row(
          children: [
            Text(widget.number,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 112, 144, 33))),
            SizedBox(
              width: 10,
            ),
            Text(widget.name,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 112, 144, 33))),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Align(alignment: Alignment.bottomLeft, child: Text(widget.desc)),
      ]),
    );
  }
}
