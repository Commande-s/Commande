class OrderModel {
  final List<String> items;

  OrderModel({this.items = const []});

  void addItem(String item) {
    items.add(item);
  }

  void clearOrder() {
    items.clear();
  }
}
