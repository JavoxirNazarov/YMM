import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:yonilgimoylashmateriallari/pages/home.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('settings');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLight = true;
  late final Box _box;

  @override
  void initState() {
    Box hiveBox = Hive.box('settings');

    setState(() {
      _box = hiveBox;
      _isLight = hiveBox.get('isLight', defaultValue: true);
    });
    super.initState();
  }

  void _toggleTheme() {
    _box.put('isLight', !_isLight);
    setState(() {
      _isLight = !_isLight;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yonilg‘I-moylash materiallari',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerColor: Colors.transparent,
        brightness: _isLight ? Brightness.dark : Brightness.light,
      ),
      home: HomePage(
        toggleTheme: _toggleTheme,
        isLight: _isLight,
      ),
    );
  }
}
