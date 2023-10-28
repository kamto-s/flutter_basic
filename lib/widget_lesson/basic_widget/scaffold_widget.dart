import 'package:flutter/material.dart';

class ScaffoldWidgetView extends StatelessWidget {
  const ScaffoldWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
      ),
      body: const Center(child: Text("ini adalah scaffold")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 24.0,
        ),
      ),
    );
  }
}
