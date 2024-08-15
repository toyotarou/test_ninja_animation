import 'package:flutter/material.dart';
import 'package:test_ninja_animation/hero/hero_sample_second.dart';

class HeroSampleFirst extends StatelessWidget {
  const HeroSampleFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Hero(
                    tag: 'sample',
                    child: Image.asset(
                      'assets/images/20240720_110456671.jpg',
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HeroSampleSecond(),
                      ),
                    );
                  },
                  child: const Text('to Second'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
