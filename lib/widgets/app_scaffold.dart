import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_theme.dart';
import '../routes/app_routes.dart';
import './app_navigation.dart';

final GlobalKey<ScaffoldState> appScaffoldKey = GlobalKey<ScaffoldState>();

class AppScaffold extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const AppScaffold({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: appScaffoldKey,
      drawer: _AppDrawer(),
      body: SafeArea(child: navigationShell),
      bottomNavigationBar: AppNavigation(navigationShell: navigationShell),
    );
  }
}
