import 'package:figma_design_ui/Navigator/router_named.dart';
import 'package:figma_design_ui/Ui/autoriz_forms_screen_widget.dart';
import 'package:figma_design_ui/Ui/registr_forms_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: RouterNamed.registr,
      path: '/',
      builder: (context, state) => RegistrFormsScreenWidget(),
    ),
    GoRoute(
      name: RouterNamed.autoriz,
      path: '/Autoriz',
      builder: (context, state) => AutorizFormsScreenWidget(),
    ),
  ],
);

