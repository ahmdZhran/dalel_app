part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {}

class HomeFailer extends HomeState {
  final String errMessage;

  HomeFailer({required this.errMessage});
}
