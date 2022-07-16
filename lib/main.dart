import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:objetos_aprendizaje/autores_page.dart';
import 'package:objetos_aprendizaje/auxiliar.dart';
import 'package:objetos_aprendizaje/buscador_taller.dart';
import 'package:objetos_aprendizaje/taller.dart';
import 'package:objetos_aprendizaje/topbar.dart';
import 'package:objetos_aprendizaje/tutorias_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uat Objetos de Aprendizaje',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: topbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 150,
              ),
              color: const Color(0xff00426A),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TutoriasPage(),
                        ),
                      );
                    }),
                    child: Text(
                      'TUTORIAS',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 1,
                    height: 20,
                    color: const Color(0xff2F5E81),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
                        return BuscadorTaller();
                      }));
                    },
                    child: Text(
                      'TALLERES',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 1,
                    height: 20,
                    color: const Color(0xff2F5E81),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c) {
                        return AutoresPage();
                      }));
                    },
                    child: Text(
                      'AUTORES',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
                viewportFraction: 1,
              ),
              items: ['tutorias', 'talleres', 'autores'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.only(
                        bottom: 25,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/$i.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(97, 176, 204, 0.85),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Text(
                            i == 'tutorias'
                                ? 'Encuentra tu camino a la educación'
                                : i == 'talleres'
                                    ? 'Utiliza herramientas digitales para el aprendizaje'
                                    : 'Consultas con tutores calificados',
                            style: const TextStyle(
                              fontSize: 32.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Inicio',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Búsqueda avanzada',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.black,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Publica tu recurso didáctico',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Búsqueda de Objetos de Aprendizaje',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 800,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffCCCCCC),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffCCCCCC),
                      width: 1,
                    ),
                  ),
                  fillColor: Color(0xffFAFAFA),
                  hintText: 'Busca un objeto de aprendizaje',
                ),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              color: const Color(0xff569AF6),
              textColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BuscadorTaller();
                }));
              },
              child: const Text('Buscar recursos'),
            ),
            const SizedBox(height: 40),
            const Text(
              'Consulta de objetos de aprendizaje para área de conocimiento',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Ingenierías',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff1E73BE),
                            fontSize: 22.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Taller();
                            }));
                          },
                          child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '• Software',
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
                              '• Ciencias computacionales',
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
                          'Información y Comunicación (TIC)',
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
                              '• Base de datos, diseño y administración de redes',
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
                              '• El uso del ordenador',
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
                              '• Software y desarrollo y análisis de aplicativos',
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
            ),
            objetoAuxiliar(),
            objetoAuxiliar(),
            objetoAuxiliar(),
            objetoAuxiliar(),
          ],
        ),
      ),
    );
  }
}
