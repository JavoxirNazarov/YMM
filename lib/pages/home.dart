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

  void _navigateToPdf(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => PdfView(keyName: item.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return item.children != null
        ? ExpansionTile(
            tilePadding: const EdgeInsets.all(4.0),
            title: Text(item.name),
            children:
                item.children!.map((e) => RecursiveVidget(item: e)).toList())
        : InkWell(
            onTap: () => _navigateToPdf(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(item.name),
                ),
              ),
            ),
          );
  }
}
