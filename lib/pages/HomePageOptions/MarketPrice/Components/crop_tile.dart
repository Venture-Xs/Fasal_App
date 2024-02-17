import 'package:flutter/material.dart';

class CropTile extends StatefulWidget {
  const CropTile({super.key});

  @override
  State<CropTile> createState() => _CropTileState();
}

class _CropTileState extends State<CropTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Row(children: [
        //Column1
        Column(
          children: [
            Text(
              "Crop Name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ],
        ),

        //Column2
        Column(
          children: [
            Text(
              "Price : 100",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            )
          ],
        )
      ]),
    );
  }
}
