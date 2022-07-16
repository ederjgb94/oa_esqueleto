import 'package:flutter/material.dart';

/**
 * D83B01
 * 00D80B
 * 0078D4
 * 3C3C41
 */
Widget objetoAuxiliar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Ciencias Físicas y Naturales',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1E73BE),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Ciencias Biológicas y afines',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Ciencias Físicas',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Matemáticas y Estadística',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Medio Ambiente',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Salud y Bienestar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff1E73BE),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Enfermería y obstetricia',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Farmacia',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '• Medicina y terapia tradicional y complementaria',
                    style: TextStyle(
                      color: Color(0xff1E73BE),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
