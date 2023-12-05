## FlutterFreaks_Video_Player

FlutterFreaks_Video_Player is a Flutter package that simplifies the integration of video playback in your Flutter app. With just a video URL, you can seamlessly incorporate video playback with additional features such as play, pause, and control over video speed, similar to YouTube.


## Features

Easy Integration: Simply pass the URL of the video, and the video will start playing in your app.

Play and Pause: Users can easily control the playback with options to play and pause the video.

Customizable Video Speed: Enjoy the flexibility of controlling the video speed, providing a user experience similar to popular video platforms.


## Example

https://github.com/priyanshutaru/Coding_Contest_App/assets/87292670/55638740-12c9-4277-856f-2cff1b6fef5f

## Gettting Started 

To use this pacakge use flutterfreaks_video_player as dependency in your pubsec.yml file of your flutter project.


## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
import 'package:flutter/material.dart';
import 'package:flutterfreaks_video_player/flutterfreaks_video_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Video Player Example'),
        ),
        body: Center(
          child: FlutterFreaksVideoPlayer(
            videoUrl: '[https://example.com/sample.mp4](https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4)',
          ),
        ),
      ),
    );
  }
}

```

## Additional information

Contributing: We welcome contributions! Feel free to open issues or submit pull requests.


Issue Tracking: If you encounter any issues, please file them on the GitHub repository.


Community Support: Join our community on github for discussions and assistance.
