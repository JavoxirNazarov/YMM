import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kontaktlar'),
        ),
        body: const Center(
          child: Text('Xushnaev Obid'),
        ));
  }
}
