import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed: () {}, child: Text('textButton')),
        TextButton.icon(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.red),
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                overlayColor: MaterialStateProperty.all(
                    (Colors.yellow.withOpacity(0.5)))),
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Text Button with Icon')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              onPrimary: Colors.yellow,
            ),
            onPressed: () {},
            child: Text('Elevated Button')),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Elevated with Icon')),
        OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Outlined with Icon')),
      ],
    );
  }
}
