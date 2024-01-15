import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/CounterBloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountgerBlocPage extends StatelessWidget {
  const CountgerBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Counter App'),),
      body: BlocProvider(create: (_) => CounterBloc(), child:const CounterView(),),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, int>(builder: (context, count){
              return Text('Count: $count');
          }),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: (){
                counterBloc.add(CounterIncrement());
              }, child: const Icon(Icons.add),),
              const SizedBox(height: 16),
              FloatingActionButton(onPressed: (){
                counterBloc.add(CounterDerement());
              }, child: const Icon(Icons.remove),),
          ],)
        ],
      ),
    );
  }
}