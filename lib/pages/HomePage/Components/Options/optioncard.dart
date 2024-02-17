import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OptionCard extends StatelessWidget {
  String option, imageLocation;
  Widget page;
  OptionCard(
      {super.key,
      required this.option,
      required this.page,
      required this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: page,
                duration: const Duration(milliseconds: 250),
                reverseDuration: const Duration(microseconds: 500)));
      },
      child: Container(
        width: 167,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(children: [
          Container(
            height: 106,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: const Color.fromARGB(255, 185, 179, 179),
              image: DecorationImage(
                image: AssetImage(imageLocation),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(option,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 52, 78, 65),
                  ))),
        ]),
      ),
    );
  }
}
