import 'package:flutter/material.dart';

class TextfieldWidgetView extends StatefulWidget {
  const TextfieldWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  State<TextfieldWidgetView> createState() => _TextfieldWidgetViewState();
}

class _TextfieldWidgetViewState extends State<TextfieldWidgetView> {
  String inputText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
        actions: const [],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (text) {
                setState(() {
                  inputText = text;
                });
              },
              decoration: const InputDecoration(
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                helperText: "What's your name?",
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("text yang di ketik:"),
          Text(
            inputText,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
