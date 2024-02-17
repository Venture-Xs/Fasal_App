import 'dart:convert';

//importing http for sending and receiving data over the internet
import 'package:fasal_app/Secrets/secrets.dart';
import 'package:http/http.dart' as http;

// Note: ADD OpenAIKey in a new file called Secrets.dart in the lib folder, create your own API Key from OpenAI

class AIService {
  //List to store conversation history
  final List<Map<String, String>> messages = [];

  //Function to check if the prompt is an art prompt or not
  Future<String> postToFarmer(String prompt) async {
    try {
      final url = Uri.parse("$backend_url/farmer/$prompt");

      final res = await http.get(url);
      var response = jsonDecode(res.body);
      return response['result']['output'];
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> predictCrop(n, p, k) async {
    var url = Uri.parse("$backend_url/predict");
    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "N": n,
          "P": p,
          "K": k,
          "temperature": "25",
          "humidity": "63",
          "ph": "6",
          "rainfall": "100"
        }));

    if (response.statusCode == 200) {
      print('Response body: ${response.body}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return response.body;
  }

  Future<String> planCrop(crop) async {
    var url = Uri.parse("$backend_url/plan");
    var response = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({"crop": crop}));

    if (response.statusCode == 200) {
      print('Response body: ${response.body}');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return response.body;
  }
}
