import 'package:flutter/material.dart';

class HumidityStatus extends StatefulWidget {
  const HumidityStatus({super.key});

  @override
  State<HumidityStatus> createState() => _HumidityStatusState();
}

class _HumidityStatusState extends State<HumidityStatus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      height: 100,
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(184, 72, 108, 255),
      ),
      child: Row(
        children: [Column()],
      ),
    );
  }
}
