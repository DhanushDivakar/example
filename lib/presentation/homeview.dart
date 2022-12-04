import 'package:example/domain/cubit/cubit/theme_cubit.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

//hiii
ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);

    return Scaffold(
      body: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {},
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, ThemeState state) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  themeCubit.toggleTheme();
                 // print(state.toString());
                },
                child: const Text("Change"),
              ),
            );
          },
        ),
      ),
    );
  }
}
