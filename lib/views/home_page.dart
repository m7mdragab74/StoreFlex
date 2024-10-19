import 'package:flutter/material.dart';
import 'package:store_app/model/product_model.dart';
import 'package:store_app/services/get_all_product_services.dart';
import 'package:store_app/widget/product_card.dart';

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
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 27,
                )),
            const SizedBox(
              width: 9,
            )
          ],
        ),
        body: FutureBuilder<List<ProductModel>>(
            future: GetAllProductServices().getAllProducts(),
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                List<ProductModel> products = snapShot.data!;
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: GridView.builder(
                      clipBehavior: Clip.none,
                      itemCount: products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1.3,
                      ),
                      itemBuilder: (context, index) {
                        return ProductCard(
                          productModel: products[index],
                        );
                      }),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
