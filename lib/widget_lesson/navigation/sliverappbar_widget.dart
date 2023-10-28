import 'package:flutter/material.dart';

class SliverappbarWidgetView extends StatelessWidget {
  const SliverappbarWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: true,
            snap: true,
            title: Text("SliverAppBar"),
            centerTitle: true,
          ),
        ],
        body: ListView.separated(
          itemCount: 99,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                title: Text("item ${index + 1}"),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
