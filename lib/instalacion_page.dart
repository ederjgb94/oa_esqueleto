import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:objetos_aprendizaje/topbar.dart';
import 'package:video_player/video_player.dart';

class Instalacion extends StatefulWidget {
  const Instalacion({Key? key}) : super(key: key);

  @override
  InstalacionState createState() => InstalacionState();
}

class InstalacionState extends State<Instalacion> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('images/instalacion.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: topbar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 200,
            color: Colors.grey.shade200,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Text(
                      'Taller Flutter Tema 1 ¿Como instalar Flutter?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text('Introducción'),
                    color: Colors.grey.shade200,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text('Instalación'),
                    color: Colors.grey.shade400,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text('Resumen'),
                    color: Colors.grey.shade200,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Text('Conclusiones'),
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 80),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Sección 2 - Instalación',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 500,
                    child: FutureBuilder(
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                      future: _initializeVideoPlayerFuture,
                    ),
                  ),
                  RatingStars(
                    value: 4.7,
                    onValueChanged: (v) {
                      //
                      setState(() {});
                    },
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
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
                    starColor: Colors.amber,
                  ),
                  SizedBox(height: 20),
                  Text('Preguntas y respuestas',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ListTile(
                    leading: Icon(Icons.question_answer),
                    title:
                        Text('Jorge pregunta: ¿Como puedo instalar en MacOS?'),
                    subtitle: Text(
                        'Respuesta por Eder Jahir: Debes seguir estos pasos...'),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.question_answer),
                    title: Text(
                        'Laura pregunta: Tengo error 03320445520sAsxBX que puedo hacer?'),
                    subtitle: Text(
                        'Respuesta por Eder Jahir: Asegura tener activado en la bios la siguiente configuración...'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
