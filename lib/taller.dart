import 'package:flutter/material.dart';
import 'package:objetos_aprendizaje/instalacion_page.dart';
import 'package:objetos_aprendizaje/introduccion_page.dart';
import 'package:objetos_aprendizaje/topbar.dart';

class Taller extends StatefulWidget {
  const Taller({Key? key}) : super(key: key);

  @override
  TallerState createState() => TallerState();
}

class TallerState extends State<Taller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topbar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Curso Flutter Tema 1 ¿Como instalar Flutter?',
                style: TextStyle(fontSize: 32)),
            const Text('14 Julio 2022 por MI. Eder Jahir Gonzalez Bravo',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text('Resumen', style: TextStyle(fontSize: 24)),
            const Text(
              'En esta unidad se revisa el tema de instalación de Flutter en el dispositivo.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            const Text('Tipo de objeto:', style: TextStyle(fontSize: 24)),
            const Text('Presentación', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text('Visualizar el objeto de aprendizaje:',
                style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            MaterialButton(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Instalacion();
                }));
              },
              child: const Text('Ver'),
            ),
          ],
        ),
      ),
    );
  }
}
