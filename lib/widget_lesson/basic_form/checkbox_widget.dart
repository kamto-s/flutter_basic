import 'package:flutter/material.dart';

class CheckboxWidgetView extends StatefulWidget {
  const CheckboxWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  State<CheckboxWidgetView> createState() => _CheckboxWidgetViewState();
}

class _CheckboxWidgetViewState extends State<CheckboxWidgetView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text("saya telah membaca dan setuju dengan\nsyarat & ketentuan ini."),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              isChecked ? "Setuju" : "Tidak",
              style: TextStyle(
                fontSize: 24,
                color: isChecked ? Colors.green : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
