
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:freelance/widgets/common_truck_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.skyblue),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.w),
            child: Row(
              children: [
                Text(
                  'Loading',
                  style: GoogleFonts.raleway(
                      fontSize: 20.w,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60)),
                  child: Text(
                    '37',
                    style: GoogleFonts.raleway(
                        fontSize: 20.w,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7))),
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 3.w,
                      mainAxisSpacing: 3.w),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const CommontTruckTile(
                  title: '1',
                  subTitle: 'PLOT 1',
                  subTitleFontWeight: FontWeight.normal,
                ),
                CommontTruckTile(
                  title: '22',
                  subTitle: 'PLOT 2',
                  titleFontWeight: FontWeight.bold,
                  subTitleFontWeight: FontWeight.normal,
                  subTitleSize: 14.sp,
                ),
                CommontTruckTile(
                  title: '14',
                  titleSize: 16.sp,
                  subTitle: 'PLOT 3',
                  titleFontWeight: FontWeight.bold,
                  subTitleFontWeight: FontWeight.normal,
                  subTitleSize: 14.sp,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
