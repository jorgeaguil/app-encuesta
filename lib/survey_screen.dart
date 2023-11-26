import 'package:flutter/material.dart';
//import 'survey_list_screen.dart';
import 'results_screen.dart';

class SurveyScreen extends StatefulWidget {
  final int surveyIndex;

  SurveyScreen({Key? key, required this.surveyIndex}) : super(key: key);

  @override
  _SurveyScreenState createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  // Define una lista de listas de preguntas
  final List<List<String>> surveyQuestions = [
    [
      '¿Cómo calificarías el proyecto de axel?',
      'Pregunta 2 de la encuesta 1',
      'Pregunta 3 de la encuesta 1',
      'Pregunta 4 de la encuesta 1',
      'Pregunta 5 de la encuesta 1'
    ],
    [
      'Pregunta 1 de la encuesta 2',
      'Pregunta 2 de la encuesta 2',
      'Pregunta 3 de la encuesta 2'
    ],
    [
      'Pregunta 1 de la encuesta 3',
      'Pregunta 2 de la encuesta 3',
      'Pregunta 3 de la encuesta 3'
    ],
    [
      '¿Cómo calificarías el proyecto de erik?',
      'Pregunta 2 de la encuesta 4',
      'Pregunta 3 de la encuesta 4'
    ],
    [
      'Pregunta 1 de la encuesta 5',
      'Pregunta 2 de la encuesta 5',
      'Pregunta 3 de la encuesta 5'
    ],
    // Agrega más listas de preguntas para más encuestas
  ];

  // Define una lista para almacenar las respuestas
  final List<String> surveyAnswers = ['', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    // Usa el índice de la encuesta para seleccionar la lista de preguntas correcta
    final List<String> currentSurveyQuestions =
        surveyQuestions[widget.surveyIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Encuesta ${widget.surveyIndex + 1}'),
      ),
      body: ListView.builder(
        itemCount: currentSurveyQuestions
            .length, // Usa la longitud de la lista de preguntas seleccionada
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Text(currentSurveyQuestions[
                    index]), // Usa la pregunta de la lista seleccionada
                TextField(
                  onChanged: (value) {
                    // Almacena la respuesta en la lista de respuestas
                    surveyAnswers[index] = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Tu respuesta',
                  ),
                ),
              ],
            ),
          );
        },
      ),

      //Variable global para almacenar las respuestas
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navega a ResultsScreen y pasa las respuestas como argumento
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultsScreen(answers: surveyAnswers),
            ),
          );
        },
        child: Icon(Icons.send),
        tooltip: 'Enviar Respuestas',
      ),
    );
  }
}
