// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardCostume extends StatelessWidget {
  String description;
  String? image;
  String title;
  double? width;

  CardCostume(
      {super.key,
      required this.title,
      required this.description,
      this.image,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // seukuran layar width
      width: MediaQuery.of(context).size.width * width!,
      child: Card(
        color: const Color.fromARGB(255, 201, 199, 199),
        child: Column(
          children: [
            Image.network(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
                'https://fastly.picsum.photos/id/9/250/250.jpg?hmac=tqDH5wEWHDN76mBIWEPzg1in6egMl49qZeguSaH9_VI'),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const Divider(),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
