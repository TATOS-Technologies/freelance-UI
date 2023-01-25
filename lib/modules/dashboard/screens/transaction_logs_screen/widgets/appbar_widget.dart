import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/constants/asset_path.dart';
import 'package:freelance/widgets/common_icon_button.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Row(
            children: [
    SizedBox(
      width: 20.w,
    ),
    Center(
      child: CommonIconButton(
        onTap: () {
          context.pop();
        },
        iconPath: AssetsPath.backIconSvg,
      ),
    ),
    SizedBox(
      width: 20.w,
    ),
    Text(
      'Transaction Logs',
      style: GoogleFonts.raleway(
        fontSize: 24.sp,
        color: AppColor.titleBlue,
      ),
    ),
    SizedBox(
      width: 20.w,
    ),
            ],
          ),
    );
  }
}
