import 'package:flutter/material.dart';

class RadioWidgetView extends StatefulWidget {
  const RadioWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  State<RadioWidgetView> createState() => _RadioWidgetViewState();
}

class _RadioWidgetViewState extends State<RadioWidgetView> {
  String? jenisKelamin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
        actions: const [],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Jenis Kelamin : "),
            Row(
              children: [
                Radio(
                  value: "Laki-laki",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  },
                ),
                const Text("Laki-laki"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "Perempuan",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  },
                ),
                const Text("Perempuan"),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: "Lainnya",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  },
                ),
                const Text("Lainnya..."),
              ],
            ),
            Text("Jenis kelamin anda adalah : $jenisKelamin"),
          ],
        ),
      ),
    );
  }
}
