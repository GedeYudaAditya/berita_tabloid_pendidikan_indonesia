import 'package:berita_tabloid_pendidikan_indonesia/components/card_costume.dart';
import 'package:berita_tabloid_pendidikan_indonesia/components/category_list.dart';
import 'package:berita_tabloid_pendidikan_indonesia/model/berita.dart';
import 'package:berita_tabloid_pendidikan_indonesia/services/apiServices.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Berita> _berita = [];

  getBerita() async {
    await ApiService().getBerita().then((value) {
      setState(() {
        _berita = value;
        // print(_berita);
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBerita();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const CategoryList(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    height: 200,
                    child: const Text('Hari Peringatan'),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Berita Terbaru',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardCostume(
                            title: 'Lorem Ipsum Dolor Sit Amet',
                            description:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            width: 0.99,
                          ),
                          CardCostume(
                            title: 'Lorem Ipsum Dolor Sit Amet',
                            description:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            width: 0.99,
                          ),
                          CardCostume(
                            title: 'Lorem Ipsum Dolor Sit Amet',
                            description:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            width: 0.99,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              color: Color.fromARGB(255, 204, 204, 204),
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Sekapur Sirih',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, quis aliquam nisl nisl eget nisl. Sed vitae nisl',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Berita Lainnya',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardCostume(
                            title: _berita[0].judul.toString(),
                            description: _berita[0].isi.toString(),
                            width: 0.59,
                          ),
                          CardCostume(
                            title: 'Lorem Ipsum Dolor Sit Amet',
                            description:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            width: 0.59,
                          ),
                          CardCostume(
                            title: 'Lorem Ipsum Dolor Sit Amet',
                            description:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                            width: 0.59,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
