library flutterfreaks_video_player;

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, deprecated_member_use, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class FlutterFreaksVideoPlayer extends StatefulWidget {
  final String videoUrl;

  // Constructor with a named parameter for the video URL
  FlutterFreaksVideoPlayer({required this.videoUrl});

  @override
  _FlutterFreaksVideoPlayerState createState() => _FlutterFreaksVideoPlayerState();
}

class _FlutterFreaksVideoPlayerState extends State<FlutterFreaksVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    // Use the provided video URL
    _videoPlayerController = VideoPlayerController.network(
      widget.videoUrl,
    );

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 16 / 9, // Adjust according to your video aspect ratio
      autoPlay: false,
      looping: false,
    );

    // Initialize and play the video
    _videoPlayerController.initialize().then((_) {
      setState(() {}); // Ensure the state is updated
      // _videoPlayerController.play(); // Don't play automatically if autoPlay is set to false
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 300,
          child: Chewie(controller: _chewieController),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Implement your logic to pause/play the video
            if (_videoPlayerController.value.isPlaying) {
              _videoPlayerController.pause();
            } else {
              _videoPlayerController.play();
            }
            setState(() {}); // Ensure the state is updated
          },
          child: Text(_videoPlayerController.value.isPlaying
              ? 'Pause Video'
              : 'Play Video'),
        ),
      ],
    );
  }
}
