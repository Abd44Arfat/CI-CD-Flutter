import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/constants.dart';


class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key,@required this.dotIndex}) : super(key: key);
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: Colors.blue),
          )),
      dotsCount: 3,
      position: dotIndex!.toInt(),
    );
  }
}
