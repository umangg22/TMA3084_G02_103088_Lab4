import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key, required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    final total = orderTotal(order);

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(order.itemName),
            Text('Quantity: ${order.quantity}'),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
