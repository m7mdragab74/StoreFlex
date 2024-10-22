import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/views/home_page.dart';
import 'package:store_app/views/update_product_page.dart';

void main() {
  runApp(const StoreFlex());
}

class StoreFlex extends StatelessWidget {
  const StoreFlex({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: 'HomePage',
            routes: {
              'HomePage': (context) => const HomePage(),
              'UpdatePage': (context) => const UpdateProductPage(),
            },
          );
        },
        child: const HomePage());
  }
}
