import 'package:flutter/material.dart';

class CenterWidgetView extends StatelessWidget {
  const CenterWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
