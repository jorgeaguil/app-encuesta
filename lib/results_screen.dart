import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> answers;

  // Constructor que acepta las respuestas como argumento
  ResultsScreen({Key? key, required this.answers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados de las Encuestas'),
      ),
      body: ListView.builder(
        itemCount: answers.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Respuesta ${index + 1}: ${answers[index]}'),
            ),
          );
        },
      ),
    );
  }
}
