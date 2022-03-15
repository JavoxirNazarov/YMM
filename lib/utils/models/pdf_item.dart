class PdfItem {
  String name;
  List<PdfItem>? children;
  bool expanded = false;

  PdfItem({required this.name, this.children});
}
