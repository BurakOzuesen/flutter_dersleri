import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  DropDownButtonKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = 'Ankara';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem(
            child: Text('Ankara Şehri'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('İzmir Şehri'),
            value: 'İzmir',
          ),
          DropdownMenuItem(
            child: Text('Bursa Şehri'),
            value: 'Bursa',
          )
        ],
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            print("Çalıştı $yeni");
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
