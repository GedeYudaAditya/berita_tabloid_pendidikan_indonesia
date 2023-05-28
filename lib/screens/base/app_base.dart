import 'package:berita_tabloid_pendidikan_indonesia/screens/base/wraper.dart';
import 'package:berita_tabloid_pendidikan_indonesia/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBase extends StatelessWidget {
  const AppBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.notifications),
          // ),
        ],
        title: const Text('Berita Tabloid Pendidikan Indonesia'),
      ),
      body: const Wraper(),
    );
  }
}
