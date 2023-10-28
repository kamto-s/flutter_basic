import 'package:flutter/material.dart';

class RowWidgetView extends StatelessWidget {
  const RowWidgetView({super.key, required this.titleAppbar});
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 20),
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
