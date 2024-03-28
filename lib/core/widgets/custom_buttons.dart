import 'package:flutter/material.dart';

import 'package:testapp/core/constants.dart';
import 'package:testapp/core/utils/size_config.dart';
import 'package:testapp/core/widgets/space_widget.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.onTap})
      : super(key: key);
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
    child: ElevatedButton(
      
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.blue,
        shape:
        
         CircleBorder()), child: Icon(Icons.keyboard_arrow_right,color:Colors.white ,),
    ),
    );
  }
}

