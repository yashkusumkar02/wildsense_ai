import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:wildsense_ai/common/fade_animation.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      'assets/videos/your_video.mp4',
    )..initialize().then((_) {
        setState(() {
          _chewieController = ChewieController(
            videoPlayerController: _videoPlayerController,
            autoPlay: true,
            looping: true,
            aspectRatio: 3 / 4,
            // Adjust aspect ratio as per your container
            allowPlaybackSpeedChanging: false,
            // Remove playback speed control
            allowMuting: false,
            showControls: false,
            // Hide controls
            placeholder: Container(
              color: Colors.black,
            ),
          );
        });
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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset('assets/images/backgroundimage.png'),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInAnimation(
                      delay: 1,
                      child: Container(
                        width: 280,
                        height: 375,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF312434),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(38),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3FFFFFFF),
                              blurRadius: 28.30,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(38),
                          child: _chewieController != null &&
                                  _chewieController
                                      .videoPlayerController.value.isInitialized
                              ? Chewie(
                                  controller: _chewieController,
                                )
                              : Center(
                                  child:
                                      CircularProgressIndicator(), // Display a loading indicator
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const FadeInAnimation(
                      delay: 1.3,
                      child: Text(
                        'START YOUR JOURNEY WITH',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const FadeInAnimation(
                      delay: 1.6,
                      child: Text(
                        'WildLife Conservation in AI 🚀',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FadeInAnimation(
                            delay: 1.9,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/welcomepage');
                              },
                              icon: Image.asset('assets/images/nextbutton.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
