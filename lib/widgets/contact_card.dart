import 'package:about_you/app_router.gr.dart';
import 'package:about_you/utils/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String contactName;

  const ContactCard({required this.contactName, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: contactCardElevation,
      child: InkWell(
        onTap: () {
          AutoRouter.of(context)
              .push(ContactDetailRoute(contactName: contactName));
        },
        child: ListTile(
          leading: const Icon(Icons.account_circle),
          title: Text(contactName),
          trailing: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
