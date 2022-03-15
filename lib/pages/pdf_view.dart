import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:flutter/material.dart';

class PdfView extends StatefulWidget {
  final String keyName;

  const PdfView({Key? key, required this.keyName}) : super(key: key);

  @override
  State<PdfView> createState() => _PdfViewState();
}

class _PdfViewState extends State<PdfView> {
  bool _isLoading = true;
  late PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    String parsedString = widget.keyName
        .replaceAll(RegExp("ʻ|’|‘|`"), '')
        .replaceAll(' ', '_')
        .toLowerCase();

    print(parsedString);

    document = await PDFDocument.fromAsset('assets/pdfs/$parsedString.pdf');

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : PDFViewer(
                  document: document,
                  zoomSteps: 1,
                  lazyLoad: true,
                  scrollDirection: Axis.vertical,
                  showPicker: false,
                )),
    );
  }
}
