import 'package:fasal_app/pages/HomePageOptions/MarketPrice/Components/crop_tile.dart';
import 'package:flutter/material.dart';

class MarketPrice extends StatefulWidget {
  const MarketPrice({super.key});

  @override
  State<MarketPrice> createState() => _MarketPriceState();
}

class _MarketPriceState extends State<MarketPrice> {
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
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Market Price",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF344E41)),
                ),
                SizedBox(
                  height: 10,
                ),

                //Search Box
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: TextField(
                    style: const TextStyle(color: Color(0xFF7E7E7E)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Color(0xFF004A62)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: const BorderSide(color: Color(0xFFD1E58F)),
                      ),
                      hintText: "Search Crop",
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Color(0XFF344E41),
                    ),
                  ),
                ),

                //List of Crops
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Market Price in Kollam",
                  style: TextStyle(
                      fontSize: 22,
                      color: const Color.fromARGB(255, 52, 78, 65)),
                ),
                SizedBox(
                  height: 10,
                ),

                SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.63,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 248, 251, 234)),
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return CropTile();
                      },
                    ),
                  ),
                )
              ]),
        ));
  }
}
