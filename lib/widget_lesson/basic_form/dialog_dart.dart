import 'package:flutter/material.dart';

class DialogWidgetView extends StatelessWidget {
  const DialogWidgetView({super.key, required this.titleAppbar});
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
        child: ElevatedButton(
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                  title: Text("Info"),
                  content: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your order was placed!"),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          ),
          child: const Text(
            "Show Dialog",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
