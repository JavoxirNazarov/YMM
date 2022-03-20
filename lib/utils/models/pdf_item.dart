class PdfItem {
  String name;
  List<PdfItem>? children;
  String? imagePath;

  PdfItem({required this.name, this.children, this.imagePath});
}
