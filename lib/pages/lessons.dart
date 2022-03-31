import 'package:flutter/material.dart';
import 'package:yonilgimoylashmateriallari/pages/pdf_view.dart';
import 'package:yonilgimoylashmateriallari/utils/models/lesson.dart';

class Lessons extends StatelessWidget {
  final String lessonName;
  const Lessons({Key? key, required this.lessonName}) : super(key: key);

  void _navigateToPdf(BuildContext context, Lesson lesson) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => lesson.keyName != null
              ? PdfView(keyName: lesson.keyName!)
              : Lessons(lessonName: lesson.name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lessonName),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: lessonsMap[lessonName]!.length,
          itemBuilder: (BuildContext context, int index) {
            Lesson item = lessonsMap[lessonName]![index];

            return Card(
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(item.name),
                ),
                onTap: () => _navigateToPdf(context, item),
              ),
            );
          }),
    );
  }
}
