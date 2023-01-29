import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Pages/HomePage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}
