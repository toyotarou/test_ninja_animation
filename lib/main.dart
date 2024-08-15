import 'package:flutter/material.dart';
import 'package:test_ninja_animation/animated_list/animated_list_sample.dart';
import 'package:test_ninja_animation/animation_builder/animation_builder_sample.dart';
import 'package:test_ninja_animation/animation_controller/animation_controller_sample.dart';
import 'package:test_ninja_animation/hero/hero_sample_first.dart';
import 'package:test_ninja_animation/sandbox/sandbox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedListSample(),
    );
  }
}
