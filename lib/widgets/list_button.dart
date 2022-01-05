import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  const ListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Text('FlatButton', style: TextStyle(fontSize: 24)),
      style: TextButton.styleFrom(
          primary: Colors.white, backgroundColor: Colors.blue),
    );
  }
}
