import 'package:fasal_app/pages/HomePageOptions/CropPrediction/Components/result_tile.dart';
import 'package:flutter/material.dart';

class PredicitionResult extends StatefulWidget {
  final predictions;
  const PredicitionResult({super.key, required this.predictions});

  @override
  State<PredicitionResult> createState() => _PredicitionResultState();
}

class _PredicitionResultState extends State<PredicitionResult> {
  late List<dynamic> list;
  void initState() {
    setState(() {
      list = widget.predictions
          .map(
              (crop) => {"name": crop["crop"], "desc": "This is the best crop"})
          .toList();
    });
  }

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
        padding: EdgeInsets.fromLTRB(20, 20, 10, 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Best Crops For You",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 52, 78, 65),
                  )),
              SizedBox(
                height: 20,
              ),

              //List builder view
              Container(
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width - 40,
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ResultTile(
                        number: (index + 1).toString(),
                        name: list[index]["name"][0].toUpperCase() +
                            list[index]["name"].substring(1),
                        desc: list[index]["desc"]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
