import 'package:flutter/material.dart';
import 'package:myapp/answer_class.dart';

class genie extends StatefulWidget {
  genie({Key? key}) : super(key: key);

  @override
  _genieState createState() => _genieState();
}

TextEditingController pregunta = new TextEditingController();

class _genieState extends State<genie> {
  String answer = '';
  String gif = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examen2- omar Diaz'),
      ),
      body: Column(
        children: [
          Text('$gif'),
          Text(
            '$answer',
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          TextField(
            autofocus: true,
            controller: pregunta,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Pregunta',
              suffixIcon: IconButton(
                onPressed: () {
                  if (pregunta.text.isNotEmpty) {
                    if (pregunta.text.substring(pregunta.text.length) == '?') {
                      setState(() {
                        Map data = answer.getAnswer();

                        gif = data['image'];
                        answer = data['answer'];
                      });
                    }
                  }
                },
                icon: Icon(Icons.question_mark),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
