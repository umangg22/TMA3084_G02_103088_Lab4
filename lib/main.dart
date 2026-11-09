import 'package:flutter/material.dart';

import 'screens/menu_screen.dart';
import 'screens/detail_screen.dart';

void main() => runApp(const PizzaStoreApp());

class PizzaStoreApp extends StatelessWidget {
  const PizzaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const MenuScreen(),
        '/vegetable': (context) => const DetailScreen(
          name: 'Vegetable Pizza',
          image: 'assets/images/vegetable.png',
          description: 'Fresh bell peppers, mushrooms and onions.',
        ),
        '/cheese': (context) => const DetailScreen(
          name: 'Cheese Pizza',
          image: 'assets/images/cheese.png',
          description: 'Classic mozzarella on a tomato base.',
        ),
        '/fries': (context) => const DetailScreen(
          name: 'Box of Fries',
          image: 'assets/images/fries.png',
          description: 'Crispy golden fries, lightly salted.',
        ),
      },
    );
  }
}
