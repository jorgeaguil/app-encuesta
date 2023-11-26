import 'package:flutter/material.dart';
import 'survey_list_screen.dart';
import 'results_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navegar a la pantalla de resultados (admin)
                // Aquí necesitas pasar la lista de respuestas a ResultsScreen
                // Por ahora, estoy pasando una lista vacía
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsScreen(answers: [])),
                );
              },
              child: Text('Login como Administrador'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navegar a la lista de encuestas (encuestado)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SurveyListScreen()),
                );
              },
              child: Text('Login como Encuestado'),
            ),
          ],
        ),
      ),
    );
  }
}
