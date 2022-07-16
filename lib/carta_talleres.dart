import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:objetos_aprendizaje/taller.dart';

import 'instalacion_page.dart';

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

final List rates = [4.5, 4.7, 4.0, 4.9];

final List textos = [
  'Instalación de Flutter',
  'Flutter y los retos\nen su campo laboral',
  'El framework Flutter\ny su crecimiento en el 2022',
  'Porque Flutter es una\nbuena opción para el desarrollo',
];

final rng = Random();

carta_taller(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return Taller();
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
                      color: colores[rng.nextInt(4)],
                      size: 40,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 30,
                child: Text(
                  'MODULE',
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
                  textos[rng.nextInt(4)],
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
                  starBuilder: (index, color) => Icon(
                    Icons.star,
                    color: color,
                    size: 20,
                  ),
                  starCount: 5,
                  starSize: 20,
                  valueLabelColor: const Color(0xff9b9b9b),
                  valueLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 12.0),
                  valueLabelRadius: 10,
                  maxValue: 5,
                  starSpacing: 2,
                  maxValueVisibility: true,
                  valueLabelVisibility: true,
                  animationDuration: Duration(milliseconds: 1000),
                  valueLabelPadding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                  valueLabelMargin: const EdgeInsets.only(right: 8),
                  starOffColor: const Color(0xffe7e8ea),
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
                  'Ver',
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
  );
}
