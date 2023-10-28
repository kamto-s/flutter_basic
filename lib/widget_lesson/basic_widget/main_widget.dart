import 'package:flutter/material.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/appbar_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/button_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/circle_avatar_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/container_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/icon_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/image_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/scaffold_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_widget/text_widget.dart';

class MainWidgetView extends StatefulWidget {
  const MainWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  State<MainWidgetView> createState() => _MainWidgetViewState();
}

class _MainWidgetViewState extends State<MainWidgetView> {
  List dataWidget = [
    {"title": "Scaffold", "view": const ScaffoldWidgetView(titleAppbar: "Scaffold")},
    {"title": "AppBar", "view": const AppbarWidgetView(titleAppbar: "AppBar")},
    {"title": "Container", "view": const ContainerWidgetView(titleAppbar: "Container")},
    {"title": "Text", "view": const TextWidgetView(titleAppbar: "Text")},
    {"title": "Button", "view": const ButtonWidgetView(titleAppbar: "Button")},
    {"title": "Icon", "view": const IconWidgetView(titleAppbar: "Icon")},
    {"title": "Images", "view": const ImageWidgetView(titleAppbar: "Images")},
    {"title": "CircleAvatar", "view": const CircleAvatarWidgetView(titleAppbar: "CircleAvatar")},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: dataWidget.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          var item = dataWidget[index];
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
      ),
    );
  }
}
