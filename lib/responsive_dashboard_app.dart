import 'package:dashboard/view/dashboard_view.dart';
import 'package:flutter/material.dart';

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardView(),
    );
  }
}
