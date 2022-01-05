// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:about_you/screens/contact_detail.dart';
import 'package:about_you/screens/group_listview_screen.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: GroupListScreen,
        initial: true,
        path: '/home',
        name: 'GroupListRoute'),
    CustomRoute(
        page: ContactDetailScreen,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        path: '/detail',
        name: 'ContactDetailRoute'),
  ],
)
class $AppRouter {}
