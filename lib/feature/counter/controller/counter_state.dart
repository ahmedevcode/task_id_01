part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class Counterloading extends CounterState {}

class Counterincress extends CounterState {}

class Counterdecress extends CounterState {}
