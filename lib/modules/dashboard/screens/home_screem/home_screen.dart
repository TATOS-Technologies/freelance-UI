import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/constants/asset_path.dart';
import 'package:freelance/widgets/common_icon_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:Size.fromHeight(70.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Row(
            children: [
              Center(
                child: CommonIconButton(
                  onTap: () {
                    
                  },
                  iconPath: AssetsPath.drawerIcon,
                ),
              ),
            Text(
                'Trip Sheet',
                style: GoogleFonts.raleway(
                    fontSize: 24.sp,
                    color: AppColor.titleBlue,),
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}

