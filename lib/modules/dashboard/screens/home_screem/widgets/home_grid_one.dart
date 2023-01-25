import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/widgets/common_truck_tile.dart';

class HomeGridOne extends StatelessWidget {
  const HomeGridOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.2,
          crossAxisSpacing: 3.w,
          mainAxisSpacing: 3.w),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:  [
        const CommontTruckTile(
          title: '1730',
          subTitle: 'CANCELLED',
        ),
        CommontTruckTile(
          title: '365',
          titleSize: 18.sp,
          subTitle: 'IN TRANSIT',
          titleFontWeight: FontWeight.bold,
          subTitleFontWeight: FontWeight.normal,
          subTitleSize: 14.sp,
        ),
        CommontTruckTile(
          title: '15',
          titleSize: 18.sp,
          subTitle: 'AT SAFETY CHECK',
          titleFontWeight: FontWeight.bold,
          subTitleFontWeight: FontWeight.normal,
          subTitleSize: 14.sp,
        ),
        
      ],
    );
  }
}
