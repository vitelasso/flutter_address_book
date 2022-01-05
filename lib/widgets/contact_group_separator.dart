import 'package:about_you/utils/constants.dart';
import 'package:flutter/material.dart';

class ContactGroupSeparator extends StatelessWidget {
  final String contactName;

  const ContactGroupSeparator({required this.contactName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(contactGroupSeparatorPadding),
      child: Text(
        contactName,
        textAlign: TextAlign.start,
        style: contactGroupSeparatorTextStyle,
      ),
    );
  }
}
