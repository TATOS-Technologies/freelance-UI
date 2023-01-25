// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class BottomNavState extends Equatable {
  final int page;
  const BottomNavState({
   required this.page,
  });

  @override
  List<Object> get props => [page];
}

class BottomNavInitial extends BottomNavState {
  BottomNavInitial({required super.page});
}


class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavInitial(page: 0));

  changeIndex({required int index}){
    emit(BottomNavInitial(page: index));
    emit(BottomNavState(page: index));
  }
}
