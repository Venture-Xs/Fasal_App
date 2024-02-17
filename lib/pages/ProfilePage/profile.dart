import 'package:fasal_app/pages/ProfilePage/Components/menu_item.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: const Center(
              child:
                  Text("Fasal", style: TextStyle(fontWeight: FontWeight.bold))),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.language_sharp,
                color: Colors.black,
              ),
            ),
          ],
          backgroundColor: const Color.fromRGBO(125, 223, 100, 0.2),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 50, 20, 25),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(125, 223, 100, 0.2),
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromARGB(255, 73, 159, 105),
                            width: 2,
                          ),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/profile_photo.jpg"),
                                    radius: 25,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 73, 159, 105),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Abhinab M M",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 8, 45, 15)),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "22",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 8, 45, 15)),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "9497443314",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color:
                                              Color.fromARGB(255, 8, 45, 15)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MenuItem(title: "Location", description: "Kollam"),
              SizedBox(
                height: 20,
              ),
              MenuItem(title: "Land Area", description: "1 hactare"),
              SizedBox(
                height: 20,
              ),
              MenuItem(
                title: "Total Asset Worth",
                description: "Rs 20 lakhs",
              ),
              SizedBox(
                height: 20,
              ),
              MenuItem(
                title: "Annual Income",
                description: "Rs  1 lakhs",
              ),
              SizedBox(
                height: 20,
              ),
              MenuItem(
                title: "Crops Cultivated",
                description: "Banana, Cashew, Coconut",
              ),
              SizedBox(
                height: 20,
              ),
              MenuItem(
                title: "Government Schemes Availed ",
                description:
                    "Pradhan Mantri Kisan Samman Nidhi, Unique package for farmers",
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
