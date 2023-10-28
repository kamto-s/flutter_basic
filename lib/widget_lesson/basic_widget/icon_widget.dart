import 'package:flutter/material.dart';

class IconWidgetView extends StatelessWidget {
  const IconWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              size: 32.0,
              color: Colors.pinkAccent,
            ),
            SizedBox(
              height: 20.0,
            ),
            Icon(
              Icons.link,
              size: 32.0,
              color: Colors.pinkAccent,
            ),
            SizedBox(
              height: 20.0,
            ),
            Icon(
              Icons.person,
              size: 32.0,
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
