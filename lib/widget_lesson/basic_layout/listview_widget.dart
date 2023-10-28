import 'package:flutter/material.dart';

class ListviewWidgetView extends StatelessWidget {
  const ListviewWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(8),
            height: 300,
            width: 150,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
