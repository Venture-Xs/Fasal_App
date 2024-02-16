import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class OptionCard extends StatelessWidget {
  String option;
  Widget page;
  OptionCard({super.key, required this.option, required this.page});

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
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 185, 179, 179),
            ),
            child: Center(child: Text("Image")),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: Text(option,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 52, 78, 65),
                  )))
        ]),
      ),
    );
  }
}
