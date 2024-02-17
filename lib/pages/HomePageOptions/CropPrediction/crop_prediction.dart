import 'package:fasal_app/pages/HomePageOptions/CropPrediction/prediction_result.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CropPrediction extends StatefulWidget {
  const CropPrediction({super.key});

  @override
  State<CropPrediction> createState() => _CropPredictionState();
}

class _CropPredictionState extends State<CropPrediction> {
  TextEditingController phController = TextEditingController();
  TextEditingController pController = TextEditingController();
  TextEditingController nController = TextEditingController();
  TextEditingController humidController = TextEditingController();
  TextEditingController waterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String ph = phController.text;
    String p = pController.text;
    String n = nController.text;
    String humid = humidController.text;
    String water = waterController.text;

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
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Farm Analysis",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 52, 78, 65),
                    )),
                const SizedBox(height: 20),

                //Option 1
                Text("Ph",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    ph = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Ph Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Option 2
                Text("Nitrogen",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    n = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Nitrogen Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Option 3
                Text("Phoshorous",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    p = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Phosphorous Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Option 3
                Text("Potassium",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    p = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Potassium Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Option 4
                Text("Temperature",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    humid = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Temperature Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Option 5
                Text("Humidity",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    water = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Humidity Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                Text("Rainfall",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),

                TextFormField(
                  controller: phController,
                  onChanged: (value) {
                    water = value;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 159, 105),
                        width: 1,
                      ),
                    ),
                    hintText: "Rainfall Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Button
                Center(
                    child: TextButton(
                  onPressed: () {
                    //Put Condition here and pass result into the result page
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: PredicitionResult(),
                            duration: const Duration(milliseconds: 250),
                            reverseDuration:
                                const Duration(microseconds: 500)));
                  },
                  style: ButtonStyle(),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 209, 229, 143)),
                    child: const Center(
                      child: Text("Predict Crop",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ));
  }
}
