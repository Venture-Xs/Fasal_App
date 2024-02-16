import 'package:flutter/material.dart';

class CreditScore extends StatefulWidget {
  const CreditScore({super.key});

  @override
  State<CreditScore> createState() => _CreditScoreState();
}

class _CreditScoreState extends State<CreditScore> {
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
              child: Text("Credit evaluation",
                  style: TextStyle(fontWeight: FontWeight.bold))),
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
        body: const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.center, children: [
                  SizedBox(
                      width: 150,
                      height: 150,
                      child: CircularProgressIndicator(
                        value:
                            0.5, // Optional: use this to set a progress value (0.0 to 1.0)
                        backgroundColor: Colors
                            .grey, // Optional: use this to set the background color
                        valueColor: AlwaysStoppedAnimation<Color>(Colors
                            .blue), // Optional: use this to set the progress color
                        strokeWidth:
                            10.0, // Optional: use this to set the width of the progress bar
                      )),
                  Text("112",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 52, 78, 65),
                      ))
                ]),
                SizedBox(
                  height: 20,
                  width: double.infinity,
                ),
                Text("Your credit score : 120/150",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 52, 78, 65),
                    )),
                Text("Your credit utilization ratio : 1.2",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 52, 78, 65),
                    )),
              ],
            )));
  }
}
