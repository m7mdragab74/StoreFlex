import 'package:flutter/material.dart';
import 'package:store_app/widget/custom_text_field.dart';

import '../widget/custom_button.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Update Product',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(
              height: 19,
            ),
            const CustomFormTextFieldWidget(
              label: 'Product Name',
              obscure: false,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomFormTextFieldWidget(
              label: 'Description',
              obscure: false,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomFormTextFieldWidget(
              label: 'Price',
              obscure: false,
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomFormTextFieldWidget(
              label: 'Image',
              obscure: false,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButtonWidget(
              label: 'Update',
              height: 50,
              textColor: Colors.white,
              fontSize: 16,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
