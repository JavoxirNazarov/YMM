import 'package:flutter/material.dart';
import 'package:yonilgimoylashmateriallari/Widgets/theme_action_button.dart';
import 'package:yonilgimoylashmateriallari/pages/about.dart';
import 'package:yonilgimoylashmateriallari/pages/lessons.dart';
import 'package:yonilgimoylashmateriallari/utils/models/ymm_module.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.toggleTheme, required this.isLight})
      : super(key: key);

  final void Function() toggleTheme;
  final bool isLight;

  void _navigateToList(BuildContext context, String lessonName) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Lessons(lessonName: lessonName)),
    );
  }

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
            itemCount: modules.length,
            itemBuilder: (BuildContext context, int index) {
              YMMModule item = modules[index];
              return Card(
                child: InkWell(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(item.imagePath)),
                    title: Text(item.name),
                  ),
                  onTap: () => _navigateToList(context, item.name),
                ),
              );
            }),
        floatingActionButton:
            ThemeActionButton(toggleTheme: toggleTheme, isLight: isLight));
  }
}
