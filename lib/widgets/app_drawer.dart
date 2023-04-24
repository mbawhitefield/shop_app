import 'package:flutter/material.dart';
import 'package:shop_app/const.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:shop_app/screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: primaryColor,
            title: const Text(
              'Hello Friend!',
              style: TextStyle(fontSize: 22),
            ),
            automaticallyImplyLeading: false,
          ),
          // const Divider(),
          ListTile(
            leading: Icon(
              Icons.shop,
              color: deepOrange,
            ),
            title: const Text(
              'Shop',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProductsOverviewScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: deepOrange,
            ),
            title: const Text(
              'Orders',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: deepOrange,
            ),
            title: const Text(
              'Manage Products',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
        ],
      ),
      // backgroundColor: primaryColor[400],
      // child: ListView(
      //   children: [
      //     const DrawerHeader(
      //       child: Icon(
      //         Icons.shopping_cart,
      //         size: 60,
      //         color: Colors.white,
      //       ),
      //     ),
      //     ListTile(
      //       leading: const Icon(
      //         Icons.home,
      //         size: 30,
      //         color: Colors.white,
      //       ),
      //       title: const Text(
      //         'Page 1',
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       onTap: () {},
      //     ),
      //     ListTile(
      //       leading: const Icon(
      //         Icons.home,
      //         size: 30,
      //         color: Colors.white,
      //       ),
      //       title: const Text(
      //         'Page 1',
      //         style: TextStyle(fontSize: 20),
      //       ),
      //       onTap: () {},
      //     ),
      //   ],
      // ),
    );
  }
}
