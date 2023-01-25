// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:freelance/config/themes/colors.dart';

class NavBarTile extends StatelessWidget {
  String iconPath;
  String title;
  bool isSelected;
  VoidCallback onTap;
  NavBarTile({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 20.w,
                width: 20.w,
                child: SvgPicture.asset(iconPath,
                    fit: BoxFit.contain,
                    color: isSelected ? AppColor.primary : AppColor.grey)),
            SizedBox(
              height: 7.w,
            ),
            Text(
              title,
              style: GoogleFonts.raleway(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? AppColor.primary : AppColor.grey),
            )
          ],
        ),
      ),
    );
  }
}
