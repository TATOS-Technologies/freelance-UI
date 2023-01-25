import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/constants/asset_path.dart';

import 'tab_bar_tile_widget.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          padding: EdgeInsets.only(
            top: 20.w,
          ),
          indicatorColor: AppColor.titleBlue,
          controller: tabController,
          labelColor: AppColor.skyblue,
          tabs:const [
            TabBarTileWidget(
              iconPath: AssetsPath.truckIconSvg,
              title: 'Truck Summary',
            ),
            TabBarTileWidget(
              iconPath: AssetsPath.docIconSvg,
              title: 'Load Summary',
            ),
           
          ],
        ),
        
      ],
    );
  }
}
