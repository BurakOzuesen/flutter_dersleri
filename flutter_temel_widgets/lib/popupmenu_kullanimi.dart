import 'package:flutter/material.dart';

class PopupKullanimi extends StatefulWidget {
  PopupKullanimi({Key? key}) : super(key: key);

  @override
  State<PopupKullanimi> createState() => _PopupKullanimiState();
}

class _PopupKullanimiState extends State<PopupKullanimi> {
  String _secilenSehir = 'Ankara';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            _secilenSehir = sehir;
          });

          print('secilen sehir $sehir');
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(child: Text('Ankara'), value: 'Ankara'),
            PopupMenuItem(child: Text('Bursa'), value: 'Bursa'),
            PopupMenuItem(child: Text('Van'), value: 'Van'),
          ];
        },
        // icon: Icon(Icons.add),
        child: Text(_secilenSehir),
      ),
    );
  }
}
