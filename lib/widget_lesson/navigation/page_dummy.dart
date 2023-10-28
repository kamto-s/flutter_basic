import 'package:flutter/material.dart';

class PageDummyView extends StatelessWidget {
  const PageDummyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dummy Page"),
        actions: const [],
      ),
      body: const Center(
        child: Text("Dummy Page"),
      ),
    );
  }
}
