import 'dart:convert';
import 'package:fasal_app/pages/HomePageOptions/MarketPrice/Components/crop.dart';
import 'package:http/http.dart' as http;

Future<dynamic> fetchCrop() async {
  final response = await http.post(Uri.parse("http://192.168.0.163:3000"),
      body: jsonEncode({"location": "kollam", "crop": "rice"}));
  print(response.body);
  if (response.statusCode == 200) {
    return Crop.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
