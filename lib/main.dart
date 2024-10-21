import 'package:flutter/material.dart';

import 'views/update_product_page.dart';

void main() {
  runApp(const StoreFlex());
}

class StoreFlex extends StatelessWidget {
  const StoreFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UpdateProductPage(),
    );
  }
}
