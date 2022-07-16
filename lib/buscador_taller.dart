import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:objetos_aprendizaje/carta_talleres.dart';
import 'package:objetos_aprendizaje/instalacion_page.dart';
import 'package:objetos_aprendizaje/topbar.dart';

class BuscadorTaller extends StatelessWidget {
  BuscadorTaller({Key? key}) : super(key: key);

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
              child: Text('Buscador de taller',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                  'Busca en una lista de objetos de aprendizaje los que contengan la palabra clave.',
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
                            'Objetos de aprendizaje',
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
                            '12 resultados',
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
                              carta_taller(context),
                              carta_taller(context),
                              carta_taller(context),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              carta_taller(context),
                              carta_taller(context),
                              carta_taller(context),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              carta_taller(context),
                              carta_taller(context),
                              carta_taller(context),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              carta_taller(context),
                              carta_taller(context),
                              carta_taller(context),
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
