import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  Widget _card(BuildContext context, String title, String route) {
    return Card(
      color: Colors.orange,
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _card(context, 'Vegetable Pizza', '/vegetable'),
          _card(context, 'Cheese Pizza', '/cheese'),
          _card(context, 'Box of Fries', '/fries'),
        ],
      ),
    );
  }
}
