import 'package:flutter/material.dart';

class SwitchWidgetView extends StatefulWidget {
  const SwitchWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  State<SwitchWidgetView> createState() => _SwitchWidgetViewState();
}

class _SwitchWidgetViewState extends State<SwitchWidgetView> {
  bool lampu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
        actions: const [],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Nyalakan Lampu"),
              const SizedBox(
                width: 20.0,
              ),
              Switch(
                value: lampu,
                onChanged: (value) {
                  setState(() {
                    lampu = value;
                  });
                },
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                lampu ? "ON" : "OFF",
                style: TextStyle(
                  color: lampu ? Colors.green : Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
