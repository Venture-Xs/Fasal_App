import 'package:flutter/material.dart';

class CropTile extends StatefulWidget {
  String cropName, price;
  CropTile({super.key, required this.cropName, required this.price});

  @override
  State<CropTile> createState() => _CropTileState();
}

class _CropTileState extends State<CropTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
        color: Color(0xFFD1E58F),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Row(children: [
        //Column1
        Column(
          children: [
            Text(
              widget.cropName,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF344E41)),
            ),
          ],
        ),

        SizedBox(
          width: 20,
        ),

        //Column2
        Column(
          children: [
            Text(
              "Price : ${widget.price}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        )
      ]),
    );
  }
}
