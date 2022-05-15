import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kontaktlar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Xushnaev Obid'),
              InkWell(
                child: const Text('o.xushnayev@gmail.com'),
                onTap: () => launchUrl(Uri.parse('o.xushnayev@gmail.com')),
              )
            ],
          ),
        ));
  }
}
