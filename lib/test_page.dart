import 'order.dart';

Order getOrder() {
  var order = Order(122210360007, testAdd(), 'Молочный рай', 'Александр Микула',
      'Москва, Новодмитровская улица, 2 к6', 500);
  return order;
}

Map idAndProductSet() {
  var _idAndProductTest = <int, Product>{};
  _idAndProductTest[0] = Product(
      'https://kaaskraam.com/wp-content/uploads/2018/07/Gouda-Oud.jpg',
      'Сыр гауда 1кг',
      500);
  _idAndProductTest[1] = Product(
      'https://upload.wikimedia.org/wikipedia/commons/0/0e/Milk_glass.jpg',
      'Пастеризованное Молоко 5% 1л',
      100);
  _idAndProductTest[2] = Product(
      'https://kubnews.ru/upload/iblock/e4a/e4a0cddada174778d50dd71bdd3a9088.jpg',
      'Сметана',
      300);
  //var test = _idAndProductTest[2];
  //print(test.title);
  return _idAndProductTest;
}

Map testAdd() {
  Map _idAndQuantity = <int, int>{};
  for (var i = 0; i < 3; i++) {
    _idAndQuantity[i] = i + 2;
  }

  return _idAndQuantity;
}
