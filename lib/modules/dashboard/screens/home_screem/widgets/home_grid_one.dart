import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeGrid extends StatelessWidget {
  final List<Widget> children;
  const HomeGrid({
    Key? key,
    required this.children,
  }) : super(key: key);

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
      children:  children
    );
  }
}
