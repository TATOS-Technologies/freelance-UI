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
import 'widgets/loading_widget.dart';
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
                   HomeGrid(
                    children: [
                      const CommontTruckTile(
                        title: '1730',
                        subTitle: 'CANCELLED',
                      ),
                      CommontTruckTile(
                        title: '365',
                        titleSize: 18.sp,
                        subTitle: 'IN TRANSIT',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '15',
                        titleSize: 18.sp,
                        subTitle: 'AT SAFETY CHECK',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const LoadingWidget(),
                  SizedBox(
                    height: 20.h,
                  ),
                  HomeGrid(
                    children: [
                      const CommontTruckTile(
                        title: '32',
                        subTitle: 'RM GATE SECURITY',
                      ),
                     const CommontTruckTile(
                        title: '111',
                        subTitle: 'AT WEIGHT',
                      ),
                      CommontTruckTile(
                        title: '0',
                        titleSize: 20.sp,
                        subTitle: 'IN PARKING LOT',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '0',
                        titleSize: 18.sp,
                        subTitle: 'AT TIPPLER',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '0',
                        titleSize: 18.sp,
                        subTitle: 'IN STOCK YARDS',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.bold,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '0',
                        titleSize: 18.sp,
                        subTitle: 'AT TARE WEIGHT',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.bold,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '3',
                        titleSize: 18.sp,
                        subTitle: 'AT EXIT GATE',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '202',
                        titleSize: 18.sp,
                        subTitle: 'IN PLANT',
                        titleFontWeight: FontWeight.bold,
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                      CommontTruckTile(
                        title: '2789',
                        subTitle: 'COMPLETED',
                        subTitleFontWeight: FontWeight.normal,
                        subTitleSize: 14.sp,
                      ),
                     
                    ],
                  ),
                  SizedBox(
                    height: 90.h,
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
