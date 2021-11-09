import 'package:flutter/material.dart';
import './screens.dart/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return (
        // providers: [
        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internship task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ));
  }
}
