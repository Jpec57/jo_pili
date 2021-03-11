import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:jo_pili/AppColors.dart';
import 'package:jo_pili/routes.dart';
import 'package:jo_pili/widgets/nav_bar.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

//Reportage france 3 FLORA
//https://youtu.be/JMRXn3i27d0
// Longeville
//https://youtu.be/E75ax8pWEmU
//Reportage tv8 Flora
//https://youtu.be/Ygeo33H_qiQ
class CoachingPage extends StatefulWidget {
  @override
  _CoachingPageState createState() => _CoachingPageState();
}

class _CoachingPageState extends State<CoachingPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'JMRXn3i27d0',
      params: YoutubePlayerParams(
        playlist: ['nPt8bK2gbaU', 'gQDByCdjUXw'], // Defining custom playlist
        startAt: Duration(seconds: 30),
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget generateBlurredImage() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 300,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/ring.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ClipRRect(
          child: BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: new Container(
              height: 300,
              decoration:
                  new BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ),
        // Align(heightFactor: 0.2, child: _textOverlayWidget())
      ],
    );
  }

  Widget _textOverlayWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      padding: const EdgeInsets.all(15.0),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(10.0),
        shape: BoxShape.rectangle,
        color: Colors.black.withOpacity(0.5),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black26,
            blurRadius: 5.0,
            offset: new Offset(5.0, 5.0),
          ),
        ],
      ),
      child: new Column(
        children: <Widget>[
          new Text(
            "Coaching",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 50.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(currentRouteName: routeCoaching),
          Expanded(
            child: Container(
              color: AppColors.backgroundColor,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    generateBlurredImage(),
                    YoutubePlayerIFrame(
                      controller: _controller,
                      aspectRatio: 16 / 9,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
