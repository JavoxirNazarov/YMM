import 'package:flutter/material.dart';

class ThemeActionButton extends StatelessWidget {
  const ThemeActionButton({
    Key? key,
    required this.toggleTheme,
    required this.isLight,
  }) : super(key: key);

  final void Function() toggleTheme;
  final bool isLight;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: toggleTheme,
        child: isLight
            ? IconButton(
                icon: const Icon(Icons.light_mode),
                onPressed: toggleTheme,
              )
            : IconButton(
                icon: const Icon(Icons.dark_mode),
                onPressed: toggleTheme,
              ));
  }
}
