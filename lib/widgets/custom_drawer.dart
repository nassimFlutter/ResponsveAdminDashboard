import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

import 'user_info_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: "Nassim",
              subtitle: "Nassim@gmail.com"),
          const SizedBox(
            height: 8,
          ),
          ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (activeIndex != index) {
                      setState(() {
                        activeIndex = index;
                      });
                    }
                  },
                  child: DrawerItem(
                    drawerItem: items[index],
                    isActive: activeIndex == index,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 20);
              },
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length),
          const Expanded(child: SizedBox()),
          const DrawerItem(
              drawerItem: DrawerItemModel(
                  title: 'Setting system', image: Assets.imagesSettings),
              isActive: false),
          const DrawerItem(
              drawerItem: DrawerItemModel(
                  title: 'Logout account', image: Assets.imagesLogout),
              isActive: false),
        ],
      ),
    );
  }
}
