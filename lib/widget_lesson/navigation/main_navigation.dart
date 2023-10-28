import 'package:flutter/material.dart';
import 'package:flutter_basic/widget_lesson/navigation/bottomnavbar_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/drawer_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/navigationpush_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/navigationpop_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/sliverappbar_widget.dart';
import 'package:flutter_basic/widget_lesson/navigation/tabbar_widget.dart';

class MainNavigationView extends StatelessWidget {
  const MainNavigationView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    List dataNavigation = [
      {"title": "Navigation push", "view": const NavigationPushWidgetView(titleAppbar: "Navigation push")},
      {"title": "Navigation pop", "view": const NavigationPopWidgetView(titleAppbar: "Navigation pop")},
      {"title": "Bottom Navigation Bar", "view": const BottomNavBarWidgetView(titleAppbar: "Bottom Navigation Bar")},
      {"title": "TabBar", "view": const TabbarWidgetView(titleAppbar: "TabBar")},
      {"title": "Drawer", "view": const DrawerWidgetView(titleAppbar: "Drawer")},
      {"title": "SliverAppBar", "view": const SliverappbarWidgetView(titleAppbar: "SliverAppBar")},
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
        actions: const [],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: dataNavigation.length,
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          var item = dataNavigation[index];
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
