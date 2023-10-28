import 'package:flutter/material.dart';

class ImageWidgetView extends StatelessWidget {
  const ImageWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleAppbar),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text("Image.network"),
              Image.network(
                "https://asset-2.tstatic.net/style/foto/bank/images/anime-wanpis-7-2023.jpg",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Image.asset"),
              Image.asset(
                "assets/img/luffy.webp",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text("Circular.Image"),
              const CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage("assets/img/luffy.webp"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
