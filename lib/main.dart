
import 'package:flutter/material.dart';


import 'package:testapp/features/presentation/on_boardin_view.dart';


void main() async {

  runApp(FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: OnBoardingView());
  }
}
