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
                              "Annapurna",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 52, 78, 65),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    size: 24,
                                    color: Color.fromARGB(255, 52, 78, 65)),
                                Text("Home",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color:
                                            Color.fromARGB(255, 52, 78, 65))),
                                SizedBox(width: 6),
                                Icon(Icons.arrow_downward,
                                    size: 16,
                                    color: Color.fromARGB(255, 52, 78, 65)),
                              ],
                            ),
                            SizedBox(
                              width: 280,
                              child: Text(
                                "Rohini sec 17, North west Delhi, 110042, New Del...",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 123, 156, 41),
                                ),
                              ),
                            ),
                          ]),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            "https://img.freepik.com/free-photo/portrait-man-laughing_23-2148859448.jpg?size=338&ext=jpg&ga=GA1.1.87170709.1707782400&semt=ais",
                            width: 90,
                            height: 90,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 209, 229, 143),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 15, bottom: 15),
                        child: Row(children: [
                          Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: const Center(
                                  child: Text("17",
                                      style: TextStyle(
                                          fontSize: 42,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 123, 156, 41))))),
                          const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                children: [
                                  SizedBox(
                                      width: 250,
                                      child: Text(
                                        "Congratulations you have made 17 donations this month",
                                        style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 52, 78, 65),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                      width: 250,
                                      child: Text(
                                        "Make three more to unlock your coupons",
                                        style: TextStyle(fontSize: 14),
                                      ))
                                ],
                              ))
                        ]),
                      ))
                ]))));
  }
}
