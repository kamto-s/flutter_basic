import 'package:flutter/material.dart';

class StackWidgetView extends StatelessWidget {
  const StackWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: const Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(
              Icons.notifications,
              size: 64,
            ),
            Positioned(
              right: -4,
              top: -4,
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.red,
                child: Text(
                  "3",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
