import 'package:flutter/material.dart';

class BottomNavBarWidgetView extends StatefulWidget {
  const BottomNavBarWidgetView({super.key, required this.titleAppbar});

  final String titleAppbar;

  @override
  State<BottomNavBarWidgetView> createState() => _BottomNavBarWidgetViewState();
}

class _BottomNavBarWidgetViewState extends State<BottomNavBarWidgetView> {
  int _selectedIndex = 0;

  void _onItemTapped(int newIndex) {
    _selectedIndex = newIndex;
    setState(() {});
  }

  final List<Widget> _pages = [
    Container(
      color: Colors.blue,
      child: const Center(child: Text("Home")),
    ),
    Container(
      color: Colors.green,
      child: const Center(child: Text("Belanja")),
    ),
    Container(
      color: Colors.red,
      child: const Center(child: Text("Akun")),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.titleAppbar),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 32,
        backgroundColor: Colors.white,
        // showUnselectedLabels: false,
        // showSelectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 24.0), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, size: 24.0), label: "Belanja"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, size: 24.0), label: "Akun"),
        ],
      ),
    );
  }
}
