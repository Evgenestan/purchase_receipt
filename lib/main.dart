import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_clipper.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var myScrollBehavior = ScrollBehavior()..buildViewportChrome(context, null, AxisDirection.down);

    Widget header(){
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Container(
                height: 102,
                width: 102,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'http://c7.hotpng.com/preview/978/237/130/the-crown-market-and-cafe-grocery-store-computer-icons-organic-food-shopping-list-bag-food.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Ваш заказ оформлен', style: bigBlackTextStyle,),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment(0, 0),
                width: 300,
                child: Text(
                  'Ваши товары будут доставлены в соответствии с выбранными датами доставки.  Вам придет смс о готовности товара',
                  textAlign: TextAlign.center,
                  style: smallGrayTextStyle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 26,bottom: 35),
              child: Container(
                alignment: Alignment(0, 0),
                width: 250,
                child: Text(
                  'Контакты для связи: +7 (905) 019-33-45 alexandov@yandex.ru',
                  textAlign: TextAlign.center,
                  style: smallGrayTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }
    Widget orderInfoBlock(){
      Widget orderNumber(){
        return Padding(
          padding: EdgeInsets.only(top: 30),
          child: Container(

            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(4),topRight: Radius.circular(4)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFf4f4f4),
                  offset: Offset(0, 3),
                  blurRadius: 5.0,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 24, 17, 0),
                  child: Text('№12221036-0007', style: middleBlackTextStyle,),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 10, 17, 0),
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text:'Заказ от 8 марта 2020 ',style: smallGrayTextStyle),
                          TextSpan(text: '«Молочный рай»',style: smallBlackTextStyle)
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 15, 17, 20 ),
                  child: Container(
                    alignment: Alignment(0,0),
                    width: 105,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFFe1f6e5),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Text('СФОРМИРОВАН',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xFF87c282)),),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      Widget aboutDelivery(){
        return Container(

          width: 340,
          decoration: BoxDecoration(
            color: Color(0xFFffffff),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFf4f4f4),
                offset: Offset(0, 2.5),
                blurRadius: 5.0,
                spreadRadius: 2,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                child: Text('Данные о доставке',style: middleBlackTextStyle,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
                child: Text('Адрес доставки:',style: smallGrayTextStyle,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                child: Text('Москва, Новодмитровская', style: smallBlackTextStyle,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 25, 16, 0),
                child: Text('Получатель:', style: smallGrayTextStyle,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 25),
                child: Text('Александр Микула',style: smallBlackTextStyle),
              ),
            ],
          ),
        );
      }
      Widget basket(){
        return Container(
          width: 340,
          child: ClipShadow(
            boxShadow: [
              BoxShadow(
                color: Color(0xFFf4f4f4),
                offset: Offset(0, 2),
                blurRadius: 2.0,
                spreadRadius: 1,
              )
            ],
            clipper: MyCustomClipper(),
            child: Container(
                width: 340,
                decoration: BoxDecoration(
                  color: Color(0xFFffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFf4f4f4),
                      offset: Offset(0, 2.5),
                      blurRadius: 5.0,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
                      child: Text('Состав заказа',style: middleBlackTextStyle,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20,left: 00),
                          child: Text('Сыр'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Text('Молоко'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Text('Творог'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Text('Масло'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 20, 17, 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('Товары',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF9b9b9b)),),
                          ),
                          Expanded(
                            child: Text('5000 Р',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),textAlign: TextAlign.right,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 20, 17, 0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('Курьерская доставка',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF9b9b9b))),
                          ),
                          Expanded(
                            child: Text('500 Р',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),textAlign: TextAlign.right,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 22, 17, 45),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('Общая стоимость:',style: middleBlackTextStyle),
                          ),
                          Expanded(
                            child: Text('5500 Р',style: middleBlackTextStyle, textAlign: TextAlign.right,),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),

          ),
        );
      }
      return Container(
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: <Widget>[
            orderNumber(),
            Container(
              width: 340,
              height: 2,
            ),
            aboutDelivery(),
            Container(
              width: 340,
              height: 2,
            ),
            basket(),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
            )
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      body: ScrollConfiguration(
        behavior: myScrollBehavior,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            header(),
            Container(
              color: Color(0xFFf5f4f9),
              width: MediaQuery.of(context).size.width,
              height: 10,
            ),
            orderInfoBlock(),
          ],
        ),
      ),
    );
  }
}
