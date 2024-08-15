/*
Animation and motion widgets
https://docs.flutter.dev/ui/widgets/animation
*/

import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double opacity = 1;
  double margin = 0;
  double width = 200;
  Color color = Colors.blue;

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          margin: EdgeInsets.all(margin),
          width: width,
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    margin = 50;
                  });
                },
                child: const Text('animate margin'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.redAccent;
                  });
                },
                child: const Text('animate color'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    width = 300;
                  });
                },
                child: const Text('animate width'),
              ),
              const Divider(
                color: Colors.white,
                thickness: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    opacity = 0.3;
                  });
                },
                child: const Text('animate opacity'),
              ),
              AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 2),
                child: const Text(
                  'opacity change',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
