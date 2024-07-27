import 'dart:convert';
import 'package:http/http.dart' as http;

class Answer {
  Future<Map<String, dynamic>> getAnswer() async {
    final response = await http.get(Uri.parse('https://yesno.wtf/api'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load an answer');
    }
  }
}
