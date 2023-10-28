import 'package:flutter/material.dart';

class SizeboxWidgetView extends StatelessWidget {
  const SizeboxWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("ini jarak pakai sizebox"),
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
