import 'package:about_you/utils/constants.dart';
import 'package:flutter/material.dart';

class AddressBookAppBar extends StatelessWidget {
  const AddressBookAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: appBarExtendedHeight,
      floating: false,
      elevation: appBarElevation,
      flexibleSpace: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return const FlexibleSpaceBar(
          title: Text('Address Book', textScaleFactor: appBarTextScaleFactor),
          collapseMode: CollapseMode.parallax,
        );
      }),
    );
  }
}
