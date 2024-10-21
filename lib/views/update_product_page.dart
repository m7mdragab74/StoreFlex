import 'package:flutter/material.dart';
import 'package:store_app/services/upgrade_product_services.dart';
import 'package:store_app/widget/custom_text_field.dart';

import '../model/product_model.dart';
import '../widget/custom_button.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  String? productName, desc, image, price;
  @override
  Widget build(BuildContext context) {
    ProductModel products =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 19,
              ),
              CustomTextFieldWidget(
                onChange: (data) {
                  productName = data;
                },
                label: 'Product Name',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFieldWidget(
                onChange: (data) {
                  desc = data;
                },
                label: 'Description',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFieldWidget(
                onChange: (data) {
                  price = data;
                },
                textInputType: TextInputType.number,
                label: 'Price',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFieldWidget(
                onChange: (data) {
                  image = data;
                },
                label: 'Image',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomButtonWidget(
                label: 'Update',
                height: 50,
                textColor: Colors.white,
                fontSize: 16,
                onTap: () {
                  UpdateProductServices().upgradeProduct(
                    title: productName!,
                    price: price!,
                    desc: desc!,
                    image: image!,
                    category: products.category,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
