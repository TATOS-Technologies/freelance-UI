import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:freelance/config/themes/colors.dart';

class TabBarTileWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  const TabBarTileWidget({
    Key? key,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            color: AppColor.titleBlue,
            fit: BoxFit.contain,
            height: 20.w,
            width: 20.w,
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.raleway(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColor.titleBlue,
            ),
          )
        ],
      ),
    );
  }
}
