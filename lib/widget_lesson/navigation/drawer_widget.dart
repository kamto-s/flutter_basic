import 'package:flutter/material.dart';

class DrawerWidgetView extends StatelessWidget {
  const DrawerWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: const Text(
                "Open Drawer",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
      endDrawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.pinkAccent,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1661341006680-5ef1216f2754?auto=format&fit=crop&q=80&w=1170&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        "Wawan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "wawan.setiawan@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      ListTile(title: const Text("Item 1"), onTap: () {}),
                      ListTile(title: const Text("Item 2"), onTap: () {}),
                      ListTile(title: const Text("Item 3"), onTap: () {}),
                      ListTile(title: const Text("Item 4"), onTap: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
