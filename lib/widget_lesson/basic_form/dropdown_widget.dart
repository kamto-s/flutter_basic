import 'package:flutter/material.dart';

class DropDownWidgetView extends StatefulWidget {
  const DropDownWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  State<DropDownWidgetView> createState() => _DropDownWidgetViewState();
}

class _DropDownWidgetViewState extends State<DropDownWidgetView> {
  String? selectedValue = "Option 1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
        actions: const [],
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              value: selectedValue,
              onChanged: (newValue) {
                setState(() {
                  selectedValue = newValue;
                });
              },
              items: const [
                DropdownMenuItem(
                  value: "Option 1",
                  child: Text("Option 1"),
                ),
                DropdownMenuItem(
                  value: "Option 2",
                  child: Text("Option 2"),
                ),
                DropdownMenuItem(
                  value: "Option 3",
                  child: Text("Option 3"),
                ),
                DropdownMenuItem(
                  value: "Option 4",
                  child: Text("Option 4"),
                ),
                DropdownMenuItem(
                  value: "Option 5",
                  child: Text("Option 5"),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Selected value: $selectedValue",
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
