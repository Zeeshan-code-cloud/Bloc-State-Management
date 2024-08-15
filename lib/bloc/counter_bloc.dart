import 'package:bloc/bloc.dart';
import 'package:bloc_state_maangement/bloc/counter_events.dart';
import 'package:bloc_state_maangement/bloc/counter_states.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  CounterBloc() :super( const CounterStates()){
    on<IncrementCounter>(incrementCounter);
    on<DecrementCounter>(decrementCounter);

  }
  incrementCounter(IncrementCounter event, Emitter<CounterStates> emit){
    emit(state.copyWith(counter: state.counter + 1));
  }
  decrementCounter(DecrementCounter event, Emitter<CounterStates> emit){
    emit(state.copyWith(counter: state.counter - 1));
  }
}