import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItem, required this.isActive});
  final DrawerItemModel drawerItem;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(drawerItem.image),
        title: Text(
          drawerItem.title,
          style: AppStyles.styleMedium16(context),
        ),
        trailing: isActive
            ? Container(
                width: 3.27,
                decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
              )
            : null);
  }
}
