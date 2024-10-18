import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
            size: 27,
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
