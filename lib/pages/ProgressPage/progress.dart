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
        backgroundColor: const Color.fromARGB(255, 248, 251, 234),
        body: const Center(
          child: Text("Progress Page"),
        ));
  }
}
