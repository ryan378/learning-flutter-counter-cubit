import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_2/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: TextStyle(fontSize: 48.0),
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              key: const Key('counterView_increment_fab'),
              child: const Icon(Icons.add),
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
            ),
            SizedBox(height: 8.0),
            FloatingActionButton(
              key: const Key('counterView_decrement_fab'),
              child: const Icon(Icons.remove),
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
            ),
            SizedBox(height: 8.0),
            FloatingActionButton(
              key: const Key('counterView_decrement2_fab'),
              child: const Icon(Icons.exposure_minus_2),
              onPressed: () {
                context.read<CounterCubit>().min2();
              },
            ),
            SizedBox(height: 8.0),
            FloatingActionButton(
              key: const Key('counterView_refresh_fab'),
              child: const Icon(Icons.refresh),
              onPressed: () {
                context.read<CounterCubit>().reset();
              },
            ),
            SizedBox(height: 8.0),
            FloatingActionButton(
              key: const Key('counterView_multiply_fab'),
              child: const Icon(Icons.clear),
              onPressed: () {
                context.read<CounterCubit>().multiply();
              },
            ),
          ],
        ),
      ),
    );
  }
}
