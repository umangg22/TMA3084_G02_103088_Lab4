Inputs: an Order (item name, quantity, unit price).
Output: OrderSummaryScreen showing item name, quantity, and total price.
Rules: total must come from orderTotal() in lib/order.dart; format as RM 0.00.
Rules: include a Back button that calls Navigator.pop.
Out of scope: payment, cart with multiple items, editing quantity.
Check: for Cheese Pizza x2 @ RM 12.50 the screen shows "RM 25.00".