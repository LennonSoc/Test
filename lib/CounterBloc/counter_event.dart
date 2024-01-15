import 'package:flutter_bloc/flutter_bloc.dart';



abstract class CounterEvent {}

class CounterIncrement extends CounterEvent {}

class CounterDerement extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc():super(0) { 
    on<CounterIncrement>((event, emit) => emit(state + 1));
    on<CounterDerement>((event, emit) => emit(state - 1) );
 }
}
