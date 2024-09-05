import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_id_01/feature/counter/controller/counter_cubit.dart';

class Counterhome extends StatelessWidget {
  const Counterhome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Counter',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        context.read<CounterCubit>().incress();
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(color: Colors.white),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${context.read<CounterCubit>().value}',
                      style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          textStyle: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        context.read<CounterCubit>().decress();
                      },
                      child: const Text(
                        '-',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ));
      },
    );
  }
}
