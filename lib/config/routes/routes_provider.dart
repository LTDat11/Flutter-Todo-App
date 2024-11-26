import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/config/routes/routes.dart';

import 'app_routes.dart';

final routesProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: RouteLocation.home,
      navigatorKey: navigationKey,
      routes: appRoutes,
    );
  },
);
