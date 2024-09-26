import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(Calculator_app());
}

class Calculator_app extends StatelessWidget {
  const Calculator_app({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => calprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.dark(),
        home:HomeScreen(), 
      ),
    );
  }
}
