import 'package:purchasereceipt/test_page.dart';

class Order {
  Map idAndQuantity;
  Map idAndProduct;
  int orderNumber;
  String from;
  String recipient;
  String address;
  DateTime date;
  int shippingCost;

  Order(int _orderNumber, Map _idAndQuantity, String _from, String _recipient,
      String _address, int _shippingCost) {
    idAndProduct = idAndProductSet();
    idAndQuantity = _idAndQuantity;
    date = DateTime.now();
    orderNumber = _orderNumber;
    recipient = _recipient;
    address = _address;
    from = _from;
    shippingCost = _shippingCost;
  }
}

class Product {
  String imageUrl;
  String title;
  int price;

  Product(String _imageUrl, String _title, int _price) {
    imageUrl = _imageUrl;
    title = _title;
    price = _price;
  }
}
