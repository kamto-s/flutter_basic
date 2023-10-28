import 'package:flutter/material.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/aspectratio_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/center_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/column_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/expanded_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/gridview_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/listview_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/padding_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/row_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/sizedbox_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/stack_widget.dart';
import 'package:flutter_basic/widget_lesson/basic_layout/wrap_widget.dart';

class MainLayoutView extends StatelessWidget {
  const MainLayoutView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    List dataLayout = [
      {"title": "Column", "view": const ColumnWidgetView(titleAppbar: "Column")},
      {"title": "Row", "view": const RowWidgetView(titleAppbar: "Row")},
      {"title": "ListView", "view": const ListviewWidgetView(titleAppbar: "ListView")},
      {"title": "GridView", "view": const GridviewWidgetView(titleAppbar: "GridView")},
      {"title": "Padding", "view": const PaddingWidgetView(titleAppbar: "Padding")},
      {"title": "AspectRatio", "view": const AspectRatioWidgetView(titleAppbar: "AspectRatio")},
      {"title": "Center", "view": const CenterWidgetView(titleAppbar: "Center")},
      {"title": "Expanded", "view": const ExpandedWidgetView(titleAppbar: "Expanded")},
      {"title": "SizedBox", "view": const SizeboxWidgetView(titleAppbar: "SizedBox")},
      {"title": "Wrap", "view": const WrapWidgetView(titleAppbar: "Wrap")},
      {"title": "Stack", "view": const StackWidgetView(titleAppbar: "Stack")},
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: dataLayout.length,
        itemBuilder: (context, index) {
          var item = dataLayout[index];
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
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
