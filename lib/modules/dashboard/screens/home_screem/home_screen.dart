import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/constants/asset_path.dart';
import 'package:freelance/modules/dashboard/screens/home_screem/widgets/home_appbar.dart';
import 'package:freelance/modules/dashboard/screens/home_screem/widgets/tab_bar_tile_widget.dart';
import 'package:freelance/modules/dashboard/screens/home_screem/widgets/tab_bar_widget.dart';
import 'package:freelance/widgets/common_truck_tile.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/home_filter_tile.dart';
import 'widgets/home_grid_one.dart';
import 'widgets/port_tile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homeBGColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.h),
        child: const HomeAppbar(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const HomeFilterTile(),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(20.w),
              child: Column(
                
                children: [
                  TabBarWidget(tabController: tabController),
                  SizedBox(
                    height: 20.h,
                  ),
                  const PortTileWidget(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const HomeGridOne(),
                  SizedBox(
                    height: 20.h,
                  ),
                  

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

