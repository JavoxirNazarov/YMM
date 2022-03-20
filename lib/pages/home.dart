import 'package:flutter/material.dart';
import 'package:yonilgimoylashmateriallari/pages/about.dart';
import 'package:yonilgimoylashmateriallari/pages/pdf_view.dart';
import 'package:yonilgimoylashmateriallari/utils/constants.dart';
import 'package:yonilgimoylashmateriallari/utils/models/pdf_item.dart';

class HomePage extends StatelessWidget {
  final void Function() toggleTheme;
  final bool isLight;

  const HomePage({Key? key, required this.toggleTheme, required this.isLight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yonilg‘I-moylash materiallari'),
        leading: GestureDetector(
          child: const Icon(Icons.contact_page),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutPage()),
            );
          },
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: pdfList.length,
        itemBuilder: (BuildContext context, int index) =>
            RecursiveVidget(item: pdfList[index]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: toggleTheme,
          child: isLight
              ? IconButton(
                  icon: const Icon(Icons.light_mode),
                  onPressed: toggleTheme,
                )
              : IconButton(
                  icon: const Icon(Icons.dark_mode),
                  onPressed: toggleTheme,
                )),
    );
  }
}

class RecursiveVidget extends StatelessWidget {
  final PdfItem item;

  const RecursiveVidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  void _navigateToPdf(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PdfView(keyName: item.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return item.children != null
        ? Card(
            child: ExpansionTile(
                tilePadding: const EdgeInsets.only(right: 7),
                title: ListTile(
                  leading: item.imagePath != null
                      ? CircleAvatar(
                          backgroundImage: AssetImage(item.imagePath!))
                      : null,
                  title: Text(item.name),
                ),
                children: item.children!
                    .map((e) => RecursiveVidget(item: e))
                    .toList()),
          )
        : Card(
            elevation: 2,
            child: InkWell(
              onTap: () => _navigateToPdf(context),
              child: ListTile(
                title: Text(item.name),
              ),
            ),
          );
  }
}
