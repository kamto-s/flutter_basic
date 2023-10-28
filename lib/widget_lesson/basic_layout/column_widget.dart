import 'package:flutter/material.dart';

class ColumnWidgetView extends StatelessWidget {
  const ColumnWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
