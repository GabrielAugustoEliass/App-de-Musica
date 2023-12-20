// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class InicilPage extends StatefulWidget {
  const InicilPage({Key? key});

  @override
  State<InicilPage> createState() => _InicilPageState();
}

class _InicilPageState extends State<InicilPage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        centerTitle: true,
        title: const Text('SpotiFy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://th.bing.com/th/id/OIP.rX7iMP5X4cjcPMAj4n_hyQHaKS?rs=1&pid=ImgDetMain',
              height: MediaQuery.of(context).size.width * 0.6,
              width: MediaQuery.of(context).size.width * 0.6,
            ),
            Row(
              children: [
                Text('0:00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
