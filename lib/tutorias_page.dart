import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:objetos_aprendizaje/carta_talleres.dart';
import 'package:objetos_aprendizaje/instalacion_page.dart';
import 'package:objetos_aprendizaje/taller.dart';
import 'package:objetos_aprendizaje/topbar.dart';

class TutoriasPage extends StatelessWidget {
  final List colores = [
    Color(0xffD83B01),
    Color(0xffBB6125),
    Color(0xff0078D4),
    Color(0xff3C3C41),
  ];

  final List iconos = [
    Icons.book,
    Icons.article,
    Icons.school,
    Icons.science,
  ];

  final rng = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Buscador de tutorias realizadas',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                  'Busca en una lista de respuestas a los alumnos en tutorias.',
                  style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 40),
            Container(
              color: Color(0xffF2F2F2),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      color: Color(0xffF2F2F2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Filtro',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)),
                          Divider(),
                          Text(
                            'Tutorias realizadas',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 0),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                              ),
                              labelText: 'Buscar',
                            ),
                          ),
                          ListTile(
                            title: Text('Ingenierías'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Ciencias de la Salud'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Alma agropecuarias'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Arquitectura, Diseño y Urbanismo'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Ciencias Económico- Administrativas'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Artes'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Ciencias Sociales'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          ListTile(
                            title: Text('Matemáticas'),
                            contentPadding: EdgeInsets.zero,
                            leading: Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: TextField(
                              controller:
                                  TextEditingController(text: 'Flutter'),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                labelText: 'Buscar',
                              ),
                            ),
                            trailing: MaterialButton(
                              elevation: 0,
                              textColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 25),
                              color: Color(0xff0078D4),
                              child: Text('Buscar'),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            '1 resultado',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (c) {
                                    return Instalacion();
                                  }));
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: Material(
                                    elevation: 2,
                                    borderRadius: BorderRadius.circular(6),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Colors.white,
                                      ),
                                      height: 250,
                                      width: 300,
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: colores[rng.nextInt(4)],
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(6),
                                                topRight: Radius.circular(6),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 30,
                                            left: 30,
                                            child: CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.black,
                                              child: CircleAvatar(
                                                radius: 28,
                                                backgroundColor: Colors.white,
                                                child: Icon(
                                                  iconos[rng.nextInt(4)],
                                                  color:
                                                      colores[rng.nextInt(4)],
                                                  size: 40,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 100,
                                            left: 30,
                                            child: Text(
                                              'TUTORIA',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                letterSpacing: 4,
                                                fontWeight: FontWeight.w100,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 120,
                                            left: 30,
                                            child: Text(
                                              'Roberto pregunta:\n¿Como instalar Flutter?',
                                              style: TextStyle(
                                                color: Color(0xff0078D4),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            top: 170,
                                            left: 30,
                                            child: RatingStars(
                                              value: rates[rng.nextInt(4)],
                                              onValueChanged: (v) {},
                                              starBuilder: (index, color) =>
                                                  Icon(
                                                Icons.star,
                                                color: color,
                                                size: 20,
                                              ),
                                              starCount: 5,
                                              starSize: 20,
                                              valueLabelColor:
                                                  const Color(0xff9b9b9b),
                                              valueLabelTextStyle:
                                                  const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontSize: 12.0),
                                              valueLabelRadius: 10,
                                              maxValue: 5,
                                              starSpacing: 2,
                                              maxValueVisibility: true,
                                              valueLabelVisibility: true,
                                              animationDuration:
                                                  Duration(milliseconds: 1000),
                                              valueLabelPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 1,
                                                      horizontal: 8),
                                              valueLabelMargin:
                                                  const EdgeInsets.only(
                                                      right: 8),
                                              starOffColor:
                                                  const Color(0xffe7e8ea),
                                              starColor: Colors.grey.shade700,
                                            ),
                                          ),
                                          Positioned(
                                            child: Divider(),
                                            top: 200,
                                            left: 30,
                                            right: 30,
                                          ),
                                          Positioned(
                                            top: 220,
                                            right: 30,
                                            child: Text(
                                              'Contesta Eder Jahir',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                letterSpacing: 4,
                                                fontWeight: FontWeight.w100,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
