import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/modules/dashboard/logic/cubit/bottom_nav_cubit.dart';

import '../home_screem/home_screen.dart';
import 'widgets/nav_bar_widget.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key});


  final List<Widget> _screens=[
    const HomeScreen(),
    const Center(child: Text('2'),),
    const Center(child: Text('3'),),
    const Center(child: Text('4'),),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<BottomNavCubit, BottomNavState>(
          builder: (context, navState) {
            return Scaffold(
              body: _screens[navState.page],
              floatingActionButton: const NavBarWidget(),
              floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
            );
          },
        ),
      ),
    );
  }
}
