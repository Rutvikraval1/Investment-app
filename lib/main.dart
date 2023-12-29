import 'package:flutter/material.dart';

import 'app/mainhome_screen.dart';
import 'core/utils/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investment',
      debugShowCheckedModeBanner: false,
      color: white24_color,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const mainhome_screen(),
    );
  }
}
