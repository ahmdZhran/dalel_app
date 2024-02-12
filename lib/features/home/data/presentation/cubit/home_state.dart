part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class GetHistoricalPeriodSuccess extends HomeState {}

class GetHistoricalPeriodLoading extends HomeState {}

class GetHistoricalPeriodFailer extends HomeState {
  final String errMessage;

  GetHistoricalPeriodFailer({required this.errMessage});
}
