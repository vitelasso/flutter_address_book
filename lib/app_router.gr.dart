// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'screens/contact_detail.dart' as _i2;
import 'screens/group_listview_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    GroupListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.GroupListScreen());
    },
    ContactDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ContactDetailRouteArgs>();
      return _i3.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.ContactDetailScreen(
              contactName: args.contactName, key: args.key),
          transitionsBuilder: _i3.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i3.RouteConfig(GroupListRoute.name, path: '/home'),
        _i3.RouteConfig(ContactDetailRoute.name, path: '/detail')
      ];
}

/// generated route for [_i1.GroupListScreen]
class GroupListRoute extends _i3.PageRouteInfo<void> {
  const GroupListRoute() : super(name, path: '/home');

  static const String name = 'GroupListRoute';
}

/// generated route for [_i2.ContactDetailScreen]
class ContactDetailRoute extends _i3.PageRouteInfo<ContactDetailRouteArgs> {
  ContactDetailRoute({required String contactName, _i4.Key? key})
      : super(name,
            path: '/detail',
            args: ContactDetailRouteArgs(contactName: contactName, key: key));

  static const String name = 'ContactDetailRoute';
}

class ContactDetailRouteArgs {
  const ContactDetailRouteArgs({required this.contactName, this.key});

  final String contactName;

  final _i4.Key? key;
}
