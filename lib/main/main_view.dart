import 'package:flutter/material.dart';
import 'package:flutter_basic/widget_lesson/basic_form/main_form.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/main_layout.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/main_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/main_navigation.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  ///
  List flutterBasic = [
    {"title": "Widget Basic", "subtitle": "Basic FLutter", "view": const MainWidgetView(titleAppbar: 'Widget Basic')},
    {"title": "Layout Basic", "subtitle": "Basic FLutter", "view": const MainLayoutView(titleAppbar: 'Layout Basic')},
    {"title": "Form Basic", "subtitle": "Basic FLutter", "view": const MainFormView(titleAppbar: 'Form Basic')},
    {"title": "Navigation", "subtitle": "Basic FLutter", "view": const MainNavigationView(titleAppbar: 'Navigation')},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Flutter Basic Widget",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: flutterBasic.length,
          itemBuilder: (context, index) {
            var item = flutterBasic[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item["view"]),
                );
              },
              child: Card(
                color: Colors.blueAccent,
                elevation: 0,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        "https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_flutter_icon_130599.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    item["title"],
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    item["subtitle"],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.open_in_new,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
