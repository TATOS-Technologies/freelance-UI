import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelance/config/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timelines/timelines.dart';

import 'widgets/appbar_widget.dart';

class TransactionLogsScreen extends StatelessWidget {
  const TransactionLogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: SafeArea(
          child: Scaffold(
        backgroundColor: AppColor.homeBGColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.h),
          child: const AppbarWidget(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
              nodePosition: 0,
              color: const Color(0xff989898),
              indicatorTheme: const IndicatorThemeData(
                position: 0,
                size: 20.0,
              ),
              connectorTheme: const ConnectorThemeData(
                thickness: 2.5,
              ),
            ),
            builder: TimelineTileBuilder.connected(
              connectionDirection: ConnectionDirection.before,
              itemCount: 5,
              indicatorPositionBuilder: (context, index) {
                return 0;
              },
              contentsBuilder: (_, index) {
                // if (processes[index].isCompleted) return null;

                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'October 4th, 2022  13:02',
                        style: GoogleFonts.raleway(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500),
                      ),
                      // _InnerTimeline(messages: processes[index].messages),
                      SizedBox(
                        width: 340.w,
                        child: Card(
                          elevation: .3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: ExpansionTile(
                            childrenPadding: const EdgeInsets.all(20),
                            title: Text(
                              'Verification Before Gross',
                              style: GoogleFonts.raleway(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index != 1
                                      ? Text(
                                          'Verification Before Gross',
                                          style: GoogleFonts.raleway(
                                              fontSize: 18.sp,
                                              color: AppColor.grey),
                                        )
                                      : Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'SAP Operator',
                                              style: GoogleFonts.raleway(
                                                  fontSize: 18.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              'SAP Operator',
                                              style: GoogleFonts.raleway(
                                                  fontSize: 18.sp,
                                                  color: AppColor.grey),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(2.w),
                                              height: 54.w,
                                              width: 150.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      color: AppColor.skyblue,
                                                      width: 2.w)),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Expanded(
                                                    child: Center(
                                                      child: Text(
                                                        'Call',
                                                        style:
                                                            GoogleFonts.raleway(
                                                                fontSize: 20.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 44.w,
                                                    width: 44.w,
                                                    decoration: BoxDecoration(
                                                        color: AppColor.skyblue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: const Center(
                                                      child: Icon(Icons.call),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                  const SizedBox(
                                    width: double.infinity,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      )
                    ],
                  ),
                );
              },
              indicatorBuilder: (_, index) {
                return Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.skyblue, width: 2.w),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    height: 8.w,
                    width: 8.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.skyblue),
                  ),
                );
              },
              connectorBuilder: (_, index, ___) => DashedLineConnector(
                gap: 10,
                dash: 10,
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
      )),
    ));
  }
}
