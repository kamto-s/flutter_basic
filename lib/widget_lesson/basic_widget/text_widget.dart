import 'package:flutter/material.dart';

class TextWidgetView extends StatelessWidget {
  const TextWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
      ),
      body: const Center(
        child: Text(
          "Tulisan ini adalah widget teks dengan style",
          style: TextStyle(
            fontSize: 24,
            color: Colors.blueAccent,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            letterSpacing: 3,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
