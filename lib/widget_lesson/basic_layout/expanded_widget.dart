import 'package:flutter/material.dart';

class ExpandedWidgetView extends StatelessWidget {
  const ExpandedWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: const Center(child: Text("Expanded")),
            ),
          ),
        ],
      ),
    );
  }
}
