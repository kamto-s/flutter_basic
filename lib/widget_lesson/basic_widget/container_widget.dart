import 'package:flutter/material.dart';

class ContainerWidgetView extends StatelessWidget {
  const ContainerWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(titleAppbar),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset.zero,
                blurRadius: 15,
              )
            ],
          ),
        ));
  }
}
