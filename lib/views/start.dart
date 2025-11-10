import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(child: Image.asset("assets/images/StartIcon.png")),
          ),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color(0x00f9f9f9),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
