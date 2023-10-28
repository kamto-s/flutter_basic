import 'package:flutter/material.dart';

class GridviewWidgetView extends StatelessWidget {
  const GridviewWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1 / 1.3,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          );
        },
      ),
    );
  }
}
