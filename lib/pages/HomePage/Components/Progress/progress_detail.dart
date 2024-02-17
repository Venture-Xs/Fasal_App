import 'package:flutter/material.dart';

class ProgressDetail extends StatefulWidget {
  const ProgressDetail({super.key});

  @override
  State<ProgressDetail> createState() => _ProgressDetailState();
}

class _ProgressDetailState extends State<ProgressDetail> {
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
          title: const Center(child: Text("Fasal")),
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              //Main Heading

              //Cultivation Stage

              //Date

              //Description box and Calender icon
            ],
          ),
        ));
  }
}
