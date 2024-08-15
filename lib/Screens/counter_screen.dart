import 'package:bloc_state_maangement/bloc/counter_bloc.dart';
import 'package:bloc_state_maangement/bloc/counter_events.dart';
import 'package:bloc_state_maangement/bloc/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterStates>(builder: (context, state){
            return Center(
              child: Text(state.counter.toString(), 
                style: const TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),),
            );
          }),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(IncrementCounter());
              }, child: const Text("Increment")),
              const SizedBox(width: 20.0,),
              ElevatedButton(onPressed: (){
                context.read<CounterBloc>().add(DecrementCounter());
              }, child: const Text("Decrement")),
            ],
          )
        ],
      ),
    );
  }
}
