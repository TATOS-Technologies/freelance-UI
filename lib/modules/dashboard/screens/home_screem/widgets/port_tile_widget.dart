
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class PortTileWidget extends StatelessWidget {
  const PortTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 15.w),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColor.homeBGColor
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('L1230051',style: GoogleFonts.roboto(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 6.h,),
          Text('Barbil to Paradeep Port',style: GoogleFonts.raleway(
            fontSize: 18.sp,
            color: Colors.grey,
          ),)
        ],
      ),
    );
  }
}
