import 'package:flutter/material.dart';

class DatepickerWidgetView extends StatefulWidget {
  const DatepickerWidgetView({super.key, required this.titleAppbar});
  final String titleAppbar;

  @override
  State<DatepickerWidgetView> createState() => _DatepickerWidgetViewState();
}

class _DatepickerWidgetViewState extends State<DatepickerWidgetView> {
  DateTime selectedDate = DateTime.now();

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
          child: GestureDetector(
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1950),
                lastDate: DateTime.now(),
              );
              if (pickedDate != null && pickedDate != selectedDate) {
                setState(() {
                  selectedDate = pickedDate;
                });
              }
            },
            child: TextFormField(
              controller: TextEditingController(
                text: "${selectedDate.toLocal()}".split(" ")[0],
              ),
              enabled: false,
              decoration: const InputDecoration(
                labelText: "Birth Date",
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                suffixIcon: Icon(
                  Icons.date_range,
                  size: 24.0,
                ),
                helperText: "What's your birth date",
              ),
              onChanged: (value) {},
            ),
          ),
        ),
      ),
    );
  }
}
