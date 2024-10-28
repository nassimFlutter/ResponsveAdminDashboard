import 'package:dashboard/adaptive_layout.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
      mobileLayout: (context) => const SizedBox(),
      tabletLayout: (context) => const SizedBox(),
      desktopLayout: (context) => const DesktopLayout(),
    ));
  }
}
