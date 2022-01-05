import 'package:about_you/utils/constants.dart';
import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  const ListButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: const Text('TextButton', style: listButtonTextStyle),
      style: TextButton.styleFrom(
          primary: listButtonTextColor, backgroundColor: primaryColor),
    );
  }
}
