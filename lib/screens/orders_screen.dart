import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/const.dart';
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/order_items.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final orderData = Provider.of<Orders>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: FutureBuilder(
        future: Provider.of<Orders>(context, listen: false).fetchAndSetOrders(),
        builder: (context, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (dataSnapshot.error != null) {
              return const Center(
                child: Text('An error occured'),
              );
            } else {
              return Consumer<Orders>(
                  builder: (
                context,
                orderData,
                child,
              ) =>
                      ListView.builder(
                        itemCount: orderData.orders.length,
                        itemBuilder: (context, index) => OrderItems(
                          order: orderData.orders[index],
                        ),
                      ));
            }
          }
        },
      ),
    );
  }
}
