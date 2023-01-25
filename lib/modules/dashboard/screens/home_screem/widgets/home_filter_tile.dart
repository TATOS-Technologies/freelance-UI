
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/constants/asset_path.dart';
import 'package:freelance/widgets/common_icon_button.dart';

class HomeFilterTile extends StatelessWidget {
  const HomeFilterTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.w),
      child: Row(
        children: [
          FlutterSwitch(
            height: 44.w,
            width: 130.w,
            value: true,
            activeColor: AppColor.skyblue,
            
            activeText: "  Inbound",
            inactiveText: "  Inbound",
            valueFontSize: 18.sp,
            activeTextColor: Colors.black,
            activeTextFontWeight: FontWeight.w400,
            toggleSize: 35.r,
            borderRadius: 40,
            showOnOff: true,
            onToggle: (val) {},
          ),
          const Spacer(),
          CommonIconButton(
              onTap: () {}, iconPath: AssetsPath.filterIconSvg)
        ],
      ),
    );
  }
}
