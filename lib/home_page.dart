import 'package:flutter/material.dart';
import 'package:we/sliding_card.dart';
import 'package:we/style.dart';

import 'register_tab.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              SizedBox(height: 8),
              Header(),
              SizedBox(height: 40),
             
             
              SlidingCardsView(),
              

            ],
          ),
        ),
 const RegisterTab(),
      ]),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        'SAVE THE DATE',
        style: TextStyle(
            fontFamily: 'Prompt',
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(218, 165, 32, 1)),
      ),
    );
  }
}
