// import 'package:e_commerce/widgets/main_wrapper.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'providers/product_provider.dart';
// import 'providers/cart_provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => ProductProvider()),
//         ChangeNotifierProvider(create: (_) => CartProvider()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'E-Commerce App',
//         home: MainScreen(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/product_provider.dart';
import 'providers/cart_provider.dart';
import 'widgets/main_wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final cartProvider = CartProvider();
  await cartProvider.loadCartFromPrefs(); //load before app starts

  runApp(MyApp(cartProvider: cartProvider));
}

class MyApp extends StatelessWidget {
  final CartProvider cartProvider;
  const MyApp({super.key, required this.cartProvider});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider<CartProvider>.value(
          value: cartProvider,
        ), //Use loaded provider for cart
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce App',
        home: MainScreen(),
      ),
    );
  }
}
