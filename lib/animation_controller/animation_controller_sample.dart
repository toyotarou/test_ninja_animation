/*
Curves class
https://api.flutter.dev/flutter/animation/Curves-class.html
*/

import 'package:flutter/material.dart';

class AnimationControllerSample extends StatefulWidget {
  const AnimationControllerSample({super.key});

  @override
  State<AnimationControllerSample> createState() =>
      _AnimationControllerSampleState();
}

class _AnimationControllerSampleState extends State<AnimationControllerSample> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AnimationControllerSampleParts(),
          ],
        ),
      ),
    );
  }
}

class AnimationControllerSampleParts extends StatefulWidget {
  const AnimationControllerSampleParts({super.key});

  @override
  State<AnimationControllerSampleParts> createState() =>
      _AnimationControllerSamplePartsState();
}

class _AnimationControllerSamplePartsState
    extends State<AnimationControllerSampleParts>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Color?> colorAnimation;
  late Animation<double> sizeAnimation;

  bool isFav = false;

  ///
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    colorAnimation = ColorTween(
      begin: Colors.blueAccent,
      end: Colors.redAccent,
    ).animate(animationController);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }

      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });

    sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 50),
          weight: 50,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 50, end: 30),
          weight: 50,
        ),
      ],
    ).animate(animationController);
  }

  ///
  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, widget) {
        return IconButton(
          onPressed: () {
            if (isFav == false) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          },
          icon: Icon(
            Icons.favorite,
            color: colorAnimation.value,
            size: sizeAnimation.value,
          ),
        );
      },
    );
  }
}
