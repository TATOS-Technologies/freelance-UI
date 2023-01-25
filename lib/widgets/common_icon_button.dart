import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:freelance/config/themes/colors.dart';

class CommonIconButton extends StatelessWidget {
  VoidCallback onTap;
  String iconPath;
  CommonIconButton({
    Key? key,
    required this.onTap,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 44.w,
        width: 44.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColor.softGrey,
        ),
        child: Center(
          child: SvgPicture.asset(iconPath),
        ),
      ),
    );
  }
}
