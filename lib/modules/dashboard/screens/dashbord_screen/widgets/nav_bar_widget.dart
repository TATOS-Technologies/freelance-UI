// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/modules/dashboard/logic/cubit/bottom_nav_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:freelance/constants/asset_path.dart';

import 'nav_bar_tile.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return GestureDetector(
          child: Container(
            decoration:  BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 40.w,
                    offset: const Offset(0,-2)

                  )
                ],
                borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(25), topRight: Radius.circular(25))),
            height: 80.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(4, (index) {
                switch (index) {
                  case 1:
                    return NavBarTile(
                      onTap: () {
                        context.read<BottomNavCubit>().changeIndex(index: index);
                      },
                      iconPath: AssetsPath.mapIconSvg,
                      title: 'MAP',
                      isSelected: state.page==index,
                    );
                  case 2:
                    return NavBarTile(
                      onTap: () {
                        context.read<BottomNavCubit>().changeIndex(index: index);
                      },
                      iconPath: AssetsPath.profileIconSvg,
                      title: 'PROFILE',
                      isSelected: state.page==index,
                    );
                  case 3:
                    return NavBarTile(
                      onTap: () {
                        context.read<BottomNavCubit>().changeIndex(index: index);
                      },
                      iconPath: AssetsPath.menuIconSvg,
                      title: 'MENU',
                      isSelected: state.page==index,
                    );
        
                  default:
                  return NavBarTile(
                    onTap: () {
                        context.read<BottomNavCubit>().changeIndex(index: index);
                      },
                      iconPath: AssetsPath.homeIconSvg,
                      title: 'HOME',
                      isSelected: state.page==index,
                    );
                }
              }),
            ),
          ),
        );
      },
    );
  }
}
