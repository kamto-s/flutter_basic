import 'package:flutter/material.dart';

class CircleAvatarWidgetView extends StatelessWidget {
  const CircleAvatarWidgetView({super.key, required this.titleAppbar});

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
            CircleAvatar(
              radius: 64,
              child: Text("Text"),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 64,
              backgroundColor: Colors.blueAccent,
              child: Icon(
                Icons.person,
                size: 52,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage("assets/img/luffy.webp"),
            ),
          ],
        ),
      ),
    );
  }
}
