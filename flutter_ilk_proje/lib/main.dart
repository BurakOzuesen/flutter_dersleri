import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Flutter Dersleri'),
          // backgroundColor: Colors.amber
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Container(height: 480, child: dersleriColumnOlustur()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          backgroundColor: Colors.orange,
          child: const Icon(
            Icons.alarm,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade700, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade800, margin: 15),
        ),
        Expanded(
          child: containerOlustur('İ', Colors.orange.shade900, margin: 15),
        )
      ],
    );
  }

  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      alignment: Alignment.center,
      width: 75,
      height: 75,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade200),
        containerOlustur('A', Colors.orange.shade400),
        containerOlustur('R', Colors.orange.shade600),
        containerOlustur('T', Colors.orange.shade800),
      ],
    );
  }

  Widget containerDersleri() {
    String _img1 =
        "https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/homepage/families-gallery/2022/04_12/family_chooser_tecnica_m.png";
    return Center(
        child: Container(
      padding: EdgeInsets.all(20),
      child: Text('emre', style: TextStyle(fontSize: 128)),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_img1),
          fit: BoxFit.scaleDown,
          repeat: ImageRepeat.repeat,
        ),
        boxShadow: [
          BoxShadow(color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
          BoxShadow(
              color: Colors.yellow, offset: Offset(0, -90), blurRadius: 10),
        ],
        color: Colors.orange,
        shape: BoxShape.rectangle,
        border: Border.all(width: 4, color: Colors.purple),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    ));
  }
}
