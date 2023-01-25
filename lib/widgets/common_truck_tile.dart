// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/constants/asset_path.dart';

class CommontTruckTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final FontWeight? titleFontWeight;
  final FontWeight? subTitleFontWeight;
  final double? titleSize;
  final double? subTitleSize;
  const CommontTruckTile({
    Key? key,
    required this.title,
    required this.subTitle,
    this.titleFontWeight,
    this.subTitleFontWeight,
    this.titleSize,
    this.subTitleSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColor.homeTileBorderColor, width: 2.w),
          color: AppColor.homeTileBGColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: titleSize ?? 28.sp,
                    fontWeight: titleFontWeight ?? FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 6.h,
                ),
                SvgPicture.asset(
                  AssetsPath.truckIconSvg,
                  color: AppColor.iconBlue,
                  fit: BoxFit.contain,
                  height: 20.w,
                  width: 20.w,
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Padding(
              padding:  EdgeInsets.only(top: 5.w),
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontSize: subTitleSize ?? 14.sp,
                  fontWeight: subTitleFontWeight ?? FontWeight.bold,
                  color: AppColor.iconBlue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
