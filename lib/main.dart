import 'package:example/custom_bloc.dart';
import 'package:example/presentation/homeview.dart';
import 'package:example/routes/approutes.dart';
import 'package:flutter/material.dart';


void main() async{
 
  runApp(const Core());
}



class Lava extends StatelessWidget {
  final AppRouter router;
  const Lava({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/home',
      onGenerateRoute: router.generateRoute,

    );
    
  }
}