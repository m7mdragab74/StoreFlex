import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () async {
              http.Response response = await http
                  .post(Uri.parse('https://fakestoreapi.com/products'), body: {
                'title': 'test product',
                'price': '13.5',
                'description': 'lorem ipsum se\'t',
                'image': 'https://i.pravatar.cc',
                'category': 'electronic'
              }, headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/x-www-form-urlencoded',
              });
              print(response.body);
            },
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
