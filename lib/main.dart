import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child:
              Text('Hola mi amor, espero que hoy hayas tenido una gran dia; te quiero mucho y echale ganas para que me invites la granita'),
        ),
      ),
    );
  }
}
