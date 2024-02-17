import 'package:flutter/material.dart';
import 'package:fasal_app/API/gpt.dart';
import 'package:fasal_app/Widgets/feature_box.dart';
import 'package:fasal_app/pallete.dart';

class ChatPage extends StatefulWidget {
  String inputString;
  ChatPage({
    Key? key,
    required this.inputString,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatPage> {
  String lastWords = '';
  OpenAIService gpt = OpenAIService();
  //Contents of the chatbot
  String? generatedContent;
  String? generatedImageUrl;

  @override
  void initState() {
    super.initState();
    if (widget.inputString.isNotEmpty) {
      _sendMessage({'role': 'user', 'content': widget.inputString});
      // animateMsg(widget.inputString);
    } else {
      _sendMessage(null);
    }
  }

  //messages history list
  final List<Map<String, String>> _messages = [];

  //controller for text field
  final TextEditingController _controller = TextEditingController();

  // final String apiKey = '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';

  // Function to put the user and bot messages into _message[]
  void _sendMessage(Map<String, String>? message) {
    setState(() {
      // If there is no messages in the _messages list then add a default message
      if (message == null) {
        _messages.add({
          'role': 'bot',
          'content': 'Good Morning, What task can i do for you?',
        });
      } else if (message['role'] == 'bot') {
        _messages.add({
          'role': 'bot',
          'content': message['content']!,
        });
      } else {
        _messages.add({
          'role': 'user',
          'content': message['content']!,
        });
      }
    });
    _controller.clear();
  }

  Future<String> animateMsg(String text) async {
    // Add a loading message
    setState(() {
      _messages.add({
        'role': 'bot',
        'content': 'Loading...',
      });
    });

    try {
      // Wait for the Future to complete
      final speech = await gpt.postToFarmer(text);

      // Once the Future is complete, remove the loading message and add new
      setState(() {
        _messages.removeLast();
        _messages.add({
          'role': 'bot',
          'content': speech,
        });
      });

      return speech;
    } catch (e) {
      // Handle any errors here
      print('Caught error: $e');
      throw 'An Error Occured';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FeatureBox(
          color: Pallete.primaryColor.withOpacity(.1),
          headerText: 'AI Powered Agriculture Consultant',
          descText:
              'AI-powered agriculture and finance assistant in Kisan Mitra is a versatile guide, providing real-time crop analytics, personalized financial insights.',
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _messages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: _messages[index]['role'] == 'bot'
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(5),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      decoration: BoxDecoration(
                        color: _messages[index]['role'] == 'bot'
                            ? Pallete.primaryColor.withOpacity(.1)
                            : Color.fromARGB(255, 209, 229, 143),
                        borderRadius: _messages[index]['role'] == 'bot'
                            ? const BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))
                            : const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                      ),
                      child: Text(
                        _messages[index]['content']!,
                        style: const TextStyle(
                            color: Colors.black, fontFamily: 'Cera Pro'),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Query',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Pallete.primaryColor,
                        ),

                        //Send Message Button On Click
                        onPressed: () async {
                          if (_controller.text.isEmpty) {
                            return;
                          } else {}
                          String text = _controller.text;
                          _sendMessage({'role': 'user', 'content': text});
                          final speech = await animateMsg(text);
                          print(speech);

                          //if the speech contains https then it is an image
                          if (speech.contains('https')) {
                            generatedImageUrl = speech;
                            generatedContent = null;
                            _sendMessage(
                                {'role': 'bot', 'content': generatedImageUrl!});
                          } else {
                            generatedContent = speech;
                            generatedImageUrl = null;

                            // _sendMessage(
                            //     {'role': 'bot', 'content': generatedContent!});
                          }
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 240, 233, 241),
                            width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide:
                            BorderSide(color: Pallete.blackColor, width: 2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),

                //Mic
                Container(
                  decoration: BoxDecoration(
                      color: Pallete.whiteColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: IconButton(
                      icon: true
                          ? const Icon(
                              Icons.stop,
                              color: Colors.red,
                            )
                          : Icon(Icons.mic, color: Pallete.primaryColor),
                      //Send Voice Message Button On Click
                      onPressed: () async {},
                      color: Theme.of(context).colorScheme.primary),
                ),
              ],
            )),
      ],
    );
  }
}
