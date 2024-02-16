import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 251, 234),
      body: Center(
        child: Text("Second Page"),
      ),
    );
  }
}
