import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/services/update_product_services.dart';
import 'package:store_app/widget/custom_text_field.dart';

import '../helper/show_snack_bar.dart';
import '../model/product_model.dart';
import '../widget/custom_button.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image, price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel products =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
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
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(products);
                      showSnackBar(context, 'Success Update Product');
                    } catch (e) {
                      print(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel products) async {
    await UpdateProductServices().upgradeProduct(
      id: products.id,
      title: productName == null ? products.title : productName!,
      price: price == null ? products.price.toString() : price!,
      desc: desc == null ? products.description : desc!,
      image: image == null ? products.image : image!,
      category: products.category,
    );
  }
}
