import 'package:flutter/material.dart';

class AspectRatioWidgetView extends StatelessWidget {
  const AspectRatioWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: AspectRatio(
        aspectRatio: 1 / 1.3,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Text("AspectRatio"),
        ),
      ),
    );
  }
}
