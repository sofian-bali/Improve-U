import 'package:flutter/material.dart';
import 'package:improve_u/ui/screens/onboarding/connexion_screen.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/logo/Animation_ImproveU.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });

    _controller.setLooping(false);
    _controller.addListener(() {
      if (!_controller.value.isPlaying && _controller.value.position == _controller.value.duration) {
        _navigateToConnexionScreen();
      }
    });
  }

  void _navigateToConnexionScreen() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 700),
        pageBuilder: (context, animation, secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: const ConnexionScreen(),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Image.asset(
                'assets/logo/logo_vertical_white.png',
                height: 200,
              ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const SplashScreen(),
  ));
}
