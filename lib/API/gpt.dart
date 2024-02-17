import 'dart:convert';

//importing http for sending and receiving data over the internet
import 'package:http/http.dart' as http;

// Note: ADD OpenAIKey in a new file called Secrets.dart in the lib folder, create your own API Key from OpenAI

class OpenAIService {
  //List to store conversation history
  final List<Map<String, String>> messages = [];

  //Function to check if the prompt is an art prompt or not
  Future<String> postToFarmer(String prompt) async {
    try {
      final url = Uri.parse("http://192.168.77.72:3000/farmer/${prompt}");

      final res = await http.get(url);
      var response = jsonDecode(res.body);
      return response['result']['output'];
    } catch (e) {
      return e.toString();
    }
  }
}
