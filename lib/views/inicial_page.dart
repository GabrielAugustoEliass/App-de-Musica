// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class InicilPage extends StatefulWidget {
  const InicilPage({Key? key});

  @override
  State<InicilPage> createState() => _InicilPageState();
}

class _InicilPageState extends State<InicilPage> {
  double value = 0;
  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    player.onAudioPositionChanged.listen((state) {
    });
  }

  Future<void> playMusica() async {
    try {
      await player.play('assets/enemy.mp3');
    } catch (e) {
      print("Erro ao reproduzir a música: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.black,
            ],
            begin: Alignment.center,
            end: Alignment.center,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 120),
          child: Column(
            children: [
              SizedBox(height: 40),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    'https://th.bing.com/th/id/OIP.LXWXIJNXNt5vXuWU3tC1xAHaEK?w=271&h=180&c=7&r=0&o=5&dpr=1.9&pid=1.7'),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Arcane',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.green,
                    size: 25,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 6),
                child: LinearProgressIndicator(
                  value: value.toDouble(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0:20',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                  Text(
                    '0:20',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      playMusica();
                    },
                    child: Text('sd'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pause_circle_outline_sharp,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
