import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freelance/config/routes/routes.dart';
import 'package:freelance/modules/dashboard/logic/cubit/bottom_nav_cubit.dart';
import 'package:freelance/modules/dashboard/screens/dashbord_screen/dashboard_screen.dart';
import 'package:freelance/modules/dashboard/screens/transaction_logs_screen/transaction_logs.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final route = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.dashBoard,
      builder: (context, state) => BlocProvider(
        create: (context) => BottomNavCubit(),
        child: DashBoardScreen(),
      ),
    ),
    GoRoute(
      path: AppRoutes.transactionLogs,
      builder: (context, state) => const TransactionLogsScreen(),
    ),
  ],
);
