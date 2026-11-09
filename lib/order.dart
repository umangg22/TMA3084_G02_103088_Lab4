class Order {
  final String itemName;
  final int quantity;
  final double unitPrice;
  const Order(this.itemName, this.quantity, this.unitPrice);
}

double orderTotal(Order order) => order.quantity * order.unitPrice;
