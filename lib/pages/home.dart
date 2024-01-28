import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:marquee/marquee.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/s1.jpeg',
  ];

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'h4sIDfYquOk',
    autoPlay: true,
    params: const YoutubePlayerParams(
      showFullscreenButton: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: SizedBox(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset('assets/images/s1.jpeg',
                            fit: BoxFit.contain)),
                  ),
                ),
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(200, 153, 107, 7)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        child: Image.asset(
                          'assets/images/brand.png',
                          scale: 6,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Sobat Pastor',
                              style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'CAFE PASTOR PAROKI ST. MARIA TAK BERCELA NGAGEL SURABAYA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 490,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: YoutubePlayer(
                      controller: _controller,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Column(
                      children: [
                        Text(
                          'Coffee Break',
                          style: TextStyle(
                              fontSize: 30,
                              color: const Color.fromARGB(255, 153, 107, 7)),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Center(
                              child: Text(
                                'Jadilah padaku menurut kehedak-Mu',
                                style: TextStyle(
                                    height: 1,
                                    fontSize: 70,
                                    fontFamily: 'GlassAntiqua',
                                    color: Color.fromARGB(255, 153, 107, 7)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Luk 1:38',
                          style: TextStyle(
                              fontSize: 30,
                              color: const Color.fromARGB(255, 153, 107, 7)),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 157, 107, 0),
                                borderRadius: BorderRadius.circular(20)),
                            width: 400,
                            height: 100,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(200, 153, 107, 7)),
                        child: Center(child: Icon(Icons.video_camera_back)),
                      ),
                      Text('Pastor Corner')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
