import 'package:flutter/material.dart';

class PaddingWidgetView extends StatelessWidget {
  const PaddingWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: Container(
        width: 500,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
            width: 4,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                "Padding",
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
