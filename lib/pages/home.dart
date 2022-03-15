import 'package:flutter/material.dart';
import 'package:yonilgimoylashmateriallari/pages/pdf_view.dart';
import 'package:yonilgimoylashmateriallari/utils/constants.dart';
import 'package:yonilgimoylashmateriallari/utils/models/pdf_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yonilg‘I-moylash materiallari'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: pdfList.length,
        itemBuilder: (BuildContext context, int index) =>
            RecursiveVidget(item: pdfList[index]),
      ),
    );
  }
}

class RecursiveVidget extends StatelessWidget {
  final PdfItem item;

  const RecursiveVidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return item.children != null
        ? ExpansionTile(
            collapsedBackgroundColor: Colors.black26,
            tilePadding: const EdgeInsets.all(3.0),
            title: Center(child: Text(item.name)),
            children:
                item.children!.map((e) => RecursiveVidget(item: e)).toList(),
          )
        : InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PdfView()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 50,
                color: Colors.amber,
                child: Center(child: Text(item.name)),
              ),
            ),
          );
  }
}
