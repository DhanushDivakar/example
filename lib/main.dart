import 'package:example/custom_bloc.dart';
import 'package:example/domain/cubit/cubit/theme_cubit.dart';
import 'package:example/presentation/homeview.dart';
import 'package:example/routes/approutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async{
 
  runApp(const Core());
}



class Lava extends StatelessWidget {
  final AppRouter router;
  const Lava({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool isDark = themeCubit.isDark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/home',
      onGenerateRoute: router.generateRoute,

    );
    
  }
}