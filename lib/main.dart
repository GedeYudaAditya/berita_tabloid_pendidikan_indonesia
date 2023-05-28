import 'package:berita_tabloid_pendidikan_indonesia/screens/base/app_base.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Berita Tabloid Pendidikan Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppBase(),
    );
  }
}
