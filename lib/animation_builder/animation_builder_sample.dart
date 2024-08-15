/*
Curves class
https://api.flutter.dev/flutter/animation/Curves-class.html
*/

import 'package:flutter/material.dart';

class AnimationBuilderSample extends StatelessWidget {
  const AnimationBuilderSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: 500),
          curve: Curves.bounceIn,
          builder: (context, val, child) {
            return Opacity(
              opacity: val,
              child: Padding(
                padding: EdgeInsets.only(top: val * 200),
                child: child,
              ),
            );
          },
          child: const Text(
            'sample',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
