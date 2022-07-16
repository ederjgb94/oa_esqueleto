import 'package:flutter/material.dart';

class BuscadorBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
            labelText: 'Buscar',
          ),
        ),
        Text('algo')
      ],
    );
  }
}
