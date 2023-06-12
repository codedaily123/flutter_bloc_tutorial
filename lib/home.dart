import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final blocContext =
        ModalRoute.of(context)?.settings.arguments as BuildContext;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: content(blocContext),
    );
  }

  Widget content(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<CounterBloc>(context),
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
              child: Container(
            child: Text(
              state.count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ));
        },
      ),
    );
  }
}
