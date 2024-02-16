import 'package:flutter/material.dart';

class CropPrediction extends StatefulWidget {
  const CropPrediction({super.key});

  @override
  State<CropPrediction> createState() => _CropPredictionState();
}

class _CropPredictionState extends State<CropPrediction> {
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
          child: Text("Crop Prediction Page"),
        ));
  }
}
