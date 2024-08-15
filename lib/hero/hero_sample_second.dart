import 'package:flutter/material.dart';

class HeroSampleSecond extends StatelessWidget {
  const HeroSampleSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: 'sample',
            child: Image.asset(
              'assets/images/20240720_110456671.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
