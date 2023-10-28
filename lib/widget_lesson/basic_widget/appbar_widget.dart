import 'package:flutter/material.dart';

class AppbarWidgetView extends StatelessWidget {
  const AppbarWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.white,
          ),
        ),
        title: Text(
          titleAppbar,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [
          Row(
            children: [
              Icon(
                Icons.search,
                size: 24.0,
                color: Colors.white,
              ),
              SizedBox(width: 6.0),
              Icon(
                Icons.notifications,
                size: 24.0,
                color: Colors.white,
              ),
              SizedBox(width: 12.0),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Text("Diatas warna pink itu adalah appbar"),
      ),
    );
  }
}
