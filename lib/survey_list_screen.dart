import 'package:flutter/material.dart';
import 'survey_screen.dart';

class SurveyListScreen extends StatelessWidget {
  // Define una lista de nombres de encuestas
  final List<String> surveyNames = [
    'Encuesta del proyecto de axel',
    'Encuesta 2',
    'Encuesta 3',
    'Encuesta del proyecto de erik',
    'Encuesta 5'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Encuestas'),
      ),
      body: ListView.builder(
        itemCount: surveyNames
            .length, // Usa la longitud de la lista de nombres de encuestas
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(surveyNames[
                  index]), // Usa el nombre de la encuesta de la lista
              onTap: () {
                // Navegar a la encuesta específica
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SurveyScreen(surveyIndex: index)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
