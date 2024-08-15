import 'package:equatable/equatable.dart';

class CounterStates extends Equatable {
  final int counter;
  const  CounterStates({ this.counter = 0});

  //now to create a method that will change the state of the counter
  CounterStates copyWith({int? counter}){
    return CounterStates(
      counter: counter??  this.counter
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}