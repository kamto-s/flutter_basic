import 'package:flutter/material.dart';

class TabbarWidgetView extends StatefulWidget {
  const TabbarWidgetView({Key? key, required this.titleAppbar}) : super(key: key);

  final String titleAppbar;

  @override
  State<TabbarWidgetView> createState() => _TabbarWidgetViewState();
}

class _TabbarWidgetViewState extends State<TabbarWidgetView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(widget.titleAppbar),
          bottom: const TabBar(
            tabs: [
              Icon(
                Icons.directions_boat,
                size: 24.0,
              ),
              Icon(
                Icons.directions_bus,
                size: 24.0,
              ),
              Icon(
                Icons.directions_ferry,
                size: 24.0,
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Boat")),
            Center(child: Text("Bus")),
            Center(child: Text("Ferry")),
          ],
        ),
      ),
    );
  }
}
