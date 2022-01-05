import 'package:flutter/material.dart';

class ContactDetailScreen extends StatelessWidget {
  final String contactName;

  const ContactDetailScreen({required this.contactName, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(contactName),
        //centerTitle: true,
      ),
      body: Center(child: Text(contactName)),
    );
  }
}
