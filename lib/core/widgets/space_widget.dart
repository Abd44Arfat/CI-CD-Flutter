import 'package:flutter/cupertino.dart';
import 'package:testapp/core/utils/size_config.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value) ;
 final double? value;
  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value) ;
 final double? value;
  @override 
  Widget build(BuildContext context) {
    return SizedBox(
      height:20,
    );
  }
}