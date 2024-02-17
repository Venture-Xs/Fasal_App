import 'package:fasal_app/pages/HomePage/Components/Progress/progress_detail.dart';
import 'package:fasal_app/pages/ProgressPage/progress.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProgressCard extends StatefulWidget {
  const ProgressCard({super.key});

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                child: ProgressDetail(),
                duration: const Duration(milliseconds: 250),
                reverseDuration: const Duration(microseconds: 500)));
      },
      child: Container(
          height: 117,
          width: MediaQuery.of(context).size.width - 48,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 209, 229, 143),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                child: Center(
                  child: Text("17",
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 123, 156, 41))),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width:
                    MediaQuery.of(context).size.width - 48 - 80 - 15 - 20 - 20,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Land Preparation",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 52, 78, 65))),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Plowing and leveling the field to create a suitable seedbed.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 52, 78, 65)),
                        softWrap: true,
                        maxLines: 2,
                      )
                    ]),
              )
            ],
          )

          // child: Padding(
          //   padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
          //   child: Row(children: [
          //     Container(
          //         width: 100,
          //         height: 100,
          //         decoration: const BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.all(Radius.circular(50))),
          //         child: const Center(
          //             child: Text("17",
          //                 style: TextStyle(
          //                     fontSize: 42,
          //                     fontWeight: FontWeight.bold,
          //                     color: Color.fromARGB(255, 123, 156, 41))))),
          //     const Padding(
          //         padding: EdgeInsets.only(left: 15),
          //         child: Column(
          //           children: [
          //             SizedBox(
          //                 width: 250,
          //                 child: Text(
          //                   "Congratulations you have made 17 donations this month",
          //                   style: TextStyle(
          //                       color: Color.fromARGB(255, 52, 78, 65),
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold),
          //                 )),
          //             SizedBox(
          //                 width: 250,
          //                 child: Text(
          //                   "Make three more to unlock your coupons",
          //                   style: TextStyle(fontSize: 14),
          //                 ))
          //           ],
          //         ))
          //   ]),
          // )
          ),
    );
  }
}
