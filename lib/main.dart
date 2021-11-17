// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
 
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          menu(
              image:
                  "https://images.unsplash.com/photo-1605125950879-a81fe58d8439?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwc2NlbmVyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              country: "Canada",
              para:
                  "Canada is packed coast to coast, north to south with some of the most majestic sights in the hemisphere. Basically, imagine everything that makes Alaska so epic, multiply it across a country six times as big, then toss in some spectacular cities........"),
          menu(
              image:
                  "https://images.pexels.com/photos/358238/pexels-photo-358238.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              country: "Spain",
              para:
                  "Spain is full of beautiful, unspoilt natural landscapes with many still relatively undiscovered. A country full of natural wonders, stunning geological scenery, lush forests, dry deserts, volcanoes, lakes and impressive mountains......"),
          menu(
              image:
                  "https://images.unsplash.com/photo-1571931264778-8ca45c9bb16d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2NlbmljfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
              country: "London",
              para: "he original five essays that make up The London Scene"),
          menu(
              image:
                  "https://i.pinimg.com/originals/44/a3/3a/44a33a79654203b308704285704027fa.jpg",
              country: "Hawaii",
              para:
                  "The State of Hawaii is the only U.S. state made up entirely of islands. The main Hawaiian Islands are: Hawaii Island, Maui, O'ahu, Kauai, Molokai, Lanai."),
        ],
      ),
    );
  }

  Container menu({image, country, para}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1),
              ],
              begin: Alignment.bottomCenter,
              stops: [0.1, 0.8]),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            textBaseline: TextBaseline.alphabetic,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "/4",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(country,
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                            speed: Duration(milliseconds: 120)),
                      ],
                      repeatForever: true,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Star(
                          colors: Colors.yellowAccent,
                        ),
                        Star(
                          colors: Colors.yellowAccent,
                        ),
                        Star(
                          colors: Colors.yellowAccent,
                        ),
                        Star(
                          colors: Colors.yellowAccent,
                        ),
                        Star(
                          colors: Colors.grey,
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(2400)",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      para,
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 1.3, height: 1.7),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Read more...",
                      style: TextStyle(color: Colors.white38),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Star extends StatelessWidget {
  Star({required this.colors});
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Icon(
      Icons.star,
      color: colors,
      size: 20,
    ));
  }
}
