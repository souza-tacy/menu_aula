import 'package:flutter/material.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  final List<Map<String, String>> menu = [
    {"name": "Hambúrguer", "description": "Delicioso", "price": "25.00"},
    {"name": "Pizza", "description": "Saborosa", "price": "40.00"}
  ];

  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cardápio')),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(menu[index]['name']!),
            subtitle: Text(menu[index]['description']!),
            trailing: Text('R\$${menu[index]['price']}'),
          );
        },
      ),
    );
  }
}
