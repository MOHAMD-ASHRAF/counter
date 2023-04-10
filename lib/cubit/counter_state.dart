part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}
class CounterAddB extends CounterState {}
class CounterAddA extends CounterState {}
class ResetPointState extends CounterState {}
