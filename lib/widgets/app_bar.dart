import 'package:flutter/material.dart';

class AddressBookAppBar extends StatelessWidget {
  const AddressBookAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: 150,
      floating: false,
      elevation: 0,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return const FlexibleSpaceBar(
          title: Text('Address Book', textScaleFactor: 1),
          collapseMode: CollapseMode.parallax,
        );
      }),
    );
  }
}
