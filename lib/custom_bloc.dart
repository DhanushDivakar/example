
import 'package:example/domain/cubit/cubit/theme_cubit.dart';
import 'package:example/main.dart';
import 'package:example/routes/approutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<ThemeCubit>(create: (ctx) => ThemeCubit())
    ],
    child: Lava(
      router: AppRouter(),
    ) ,
    );
  }
}