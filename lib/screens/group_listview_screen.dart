import 'package:about_you/data/input_data.dart';
import 'package:about_you/widgets/app_bar.dart';
import 'package:about_you/widgets/contact_card.dart';
import 'package:about_you/widgets/contact_group_separator.dart';
import 'package:about_you/widgets/list_button.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/sliver_grouped_list.dart';

class GroupListScreen extends StatefulWidget {
  const GroupListScreen({Key? key}) : super(key: key);

  @override
  State<GroupListScreen> createState() => _GroupListScreenState();
}

class _GroupListScreenState extends State<GroupListScreen> {
  bool _widgetsVisible = true;
  final FocusNode _focus = FocusNode();
  List<String> _filteredContacts = contacts;

  @override
  void initState() {
    _widgetsVisible = true;
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
    setState(() {
      _widgetsVisible = _focus.hasFocus ? false : true;
    });
  }

  SliverAppBar createSilverSearchBar() {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      pinned: true,
      title: Card(
        child: TextField(
          onChanged: (value) => setState(() {
            _filteredContacts = contacts
                .where((u) => (u.toLowerCase().contains(value.toLowerCase())))
                .toList();
          }),
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                setState(() {
                  _filteredContacts = contacts;
                });
                _focus.unfocus();
              },
            ),
            hintText: 'Search...',
            border: InputBorder.none,
          ),
          focusNode: _focus,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
          return <Widget>[
            const AddressBookAppBar(),
            createSilverSearchBar(),
          ];
        },
        body: Column(
          children: <Widget>[
            Visibility(
              visible: _widgetsVisible,
              child: const ListButton(),
            ),
            Expanded(
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: <Widget>[
                  SliverGroupedListView<dynamic, String>(
                    elements: _filteredContacts,
                    groupBy: (element) => element[0],
                    groupComparator: (value1, value2) =>
                        value2.compareTo(value1),
                    itemComparator: (item1, item2) => item1.compareTo(item2),
                    order: GroupedListOrder.DESC,
                    groupSeparatorBuilder: (String value) =>
                        ContactGroupSeparator(contactName: value),
                    itemBuilder: (c, element) {
                      return ContactCard(contactName: element);
                    },
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _widgetsVisible,
              child: const ListButton(),
            ),
          ],
        ),
      ),
    );
  }
}
