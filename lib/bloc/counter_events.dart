import 'package:equatable/equatable.dart';
//abstract class well act as a base class it well specify the behavior for it
///child classes
abstract class CounterEvents extends Equatable {


  @override
  // TODO: implement props
  List<Object?> get props => [Object];
}

class IncrementCounter extends CounterEvents {

}

class DecrementCounter extends CounterEvents {
}

