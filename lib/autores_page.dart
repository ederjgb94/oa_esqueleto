import 'package:flutter/material.dart';
import 'package:objetos_aprendizaje/topbar.dart';

class AutoresPage extends StatefulWidget {
  const AutoresPage({Key? key}) : super(key: key);

  @override
  AutoresPageState createState() => AutoresPageState();
}

class AutoresPageState extends State<AutoresPage> {
  String valor = 'Tópicos de programación';
  List avatares = [
    '59',
    '32',
    '17',
    '8',
    '45',
  ];
  List nombres = [
    'Dr. Juan Carlos Pérez',
    'Dr. Laura Correa',
    'Dr. Massimo Di Martino',
    'Dr. Roberto Salazar',
    'Dr. Liria Cabos',
  ];

  void dialogo(BuildContext context, String autor) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('¿Deseas solicitar tutorias con $autor?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Escriba su correo electrónico',
                ),
              ),
              SizedBox(height: 30),
              Text('Materia'),
              DropdownButton(
                value: valor,
                items: const [
                  DropdownMenuItem(
                      value: 'Matemáticas', child: Text('Matemáticas')),
                  DropdownMenuItem(
                      value: 'Ingeniería', child: Text('Ingeniería')),
                  DropdownMenuItem(
                      value: 'Electrónica', child: Text('Electrónica')),
                  DropdownMenuItem(
                      value: 'Tópicos de programación',
                      child: Text('Tópicos de programación')),
                  DropdownMenuItem(
                      value: 'Programación avanzada',
                      child: Text('Programación avanzada')),
                ],
                onChanged: (String? value) {
                  valor = value!;
                  setState(() {});
                },
              ),
              SizedBox(height: 30),
              Text('Tema'),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Escriba el tema',
                ),
              ),
              SizedBox(height: 30),
              Text('Descrición'),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Escriba la descripción',
                ),
              ),
              SizedBox(height: 30),
              Text('Agregar PDF de apoyo'),
              SizedBox(height: 10),
              FlatButton(
                child: Text('Subir PDF'),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('aceptar'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Lista de autores',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        dialogo(context, nombres[0]);
                      },
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage('images/' + avatares[0] + '.jpeg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      nombres[0],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        dialogo(context, nombres[1]);
                      },
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage('images/' + avatares[1] + '.jpeg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      nombres[1],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        dialogo(context, nombres[2]);
                      },
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage('images/' + avatares[2] + '.jpeg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      nombres[2],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        dialogo(context, nombres[3]);
                      },
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage('images/' + avatares[3] + '.jpeg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      nombres[3],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        dialogo(context, nombres[4]);
                      },
                      child: CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage('images/' + avatares[4] + '.jpeg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      nombres[4],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
