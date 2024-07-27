import 'package:flutter/material.dart';
import 'package:myapp/genie.dart';

void main() => runApp(const examenomar());

class examenomar extends StatelessWidget {
  const examenomar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: genie(),
      debugShowCheckedModeBanner: false,
    );
  }
}
