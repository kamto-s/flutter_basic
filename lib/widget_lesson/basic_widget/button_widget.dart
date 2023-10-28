import 'package:flutter/material.dart';

class ButtonWidgetView extends StatelessWidget {
  const ButtonWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                shadowColor: Colors.grey[20],
                elevation: 5,
              ),
              child: const Text(
                "ElevatedButton",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {},
              child: const Text("TextButton"),
            ),
            const SizedBox(height: 20.0),
            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline,
                size: 24.0,
              ),
              label: const Text("ElevatedButton"),
            ),
          ],
        ),
      ),
    );
  }
}
