import 'package:flutter/material.dart';
import 'package:flutter_basic/widget_lesson/basic_form/bottomsheet_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/checkbox_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/datepicker_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/dialog_dart.dart';
import 'package:flutter_basic/widget_lesson/basic_form/dropdown_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/radio_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/snackbar_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/switch_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_form/textfield_widget.dart';

class MainFormView extends StatelessWidget {
  const MainFormView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    List dataForm = [
      {"title": "TextField", "view": const TextfieldWidgetView(titleAppbar: "TextField")},
      {"title": "Dropdown", "view": const DropDownWidgetView(titleAppbar: "Dropdown")},
      {"title": "Switch", "view": const SwitchWidgetView(titleAppbar: "Switch")},
      {"title": "Radio", "view": const RadioWidgetView(titleAppbar: "Radio")},
      {"title": "Checkbox", "view": const CheckboxWidgetView(titleAppbar: "Checkbox")},
      {"title": "DatePicker", "view": const DatepickerWidgetView(titleAppbar: "DatePicker")},
      {"title": "Dialog", "view": const DialogWidgetView(titleAppbar: "Dialog")},
      {"title": "Bottomsheet", "view": const BottomsheetWidgetView(titleAppbar: "Bottomsheet")},
      {"title": "Snackbar", "view": const SnackbarWidgetView(titleAppbar: "Snackbar")},
    ];
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(titleAppbar),
          actions: const [],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: dataForm.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            var item = dataForm[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item["view"]),
                );
              },
              child: ListTile(
                title: Text(
                  item["title"],
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: const Icon(
                  Icons.open_in_new,
                  color: Colors.blueAccent,
                  size: 24.0,
                ),
              ),
            );
          },
        ));
  }
}
