import 'package:flutter/material.dart';

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
          padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find Best Crop For Your Land",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 52, 78, 65),
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
                Text("Phosphorus",
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

                //Option 4
                Text("Humidity",
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
                    hintText: "Humidity Value",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 8, 45, 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //Option 5
                Text("Water Level",
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
                    hintText: "Water Value",
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
                    child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(),
                  child: Container(
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(
                      child: Text("Predict Crop",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 248, 251, 234),
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
