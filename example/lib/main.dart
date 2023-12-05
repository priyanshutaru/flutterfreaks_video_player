// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterfreaks_video_player/flutterfreaks_video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFreaks Video Player',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FlutterFreaksVideoPlayerExample(),
    );
  }
}

class FlutterFreaksVideoPlayerExample extends StatefulWidget {
  const FlutterFreaksVideoPlayerExample({super.key});

  @override
  State<FlutterFreaksVideoPlayerExample> createState() =>
      _FlutterFreaksVideoPlayerExampleState();
}

class _FlutterFreaksVideoPlayerExampleState
    extends State<FlutterFreaksVideoPlayerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterFreaks Video Player'),
      ),
      body: Center(
        child: Column(
          children: [
            FlutterFreaksVideoPlayer(
              videoUrl:
                  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
          ],
        ),
      ),
    );
  }
}
