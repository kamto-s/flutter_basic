import 'package:flutter/material.dart';

class WrapWidgetView extends StatelessWidget {
  const WrapWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: const Wrap(
        runSpacing: 20,
        spacing: 20,
        children: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 32,
          ),
        ],
      ),
    );
  }
}
