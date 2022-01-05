import 'package:about_you/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String contactName;

  const ContactCard({required this.contactName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: InkWell(
        onTap: () {
          AutoRouter.of(context)
              .push(ContactDetailRoute(contactName: contactName));
        },
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          leading: const Icon(Icons.account_circle),
          title: Text(contactName),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
