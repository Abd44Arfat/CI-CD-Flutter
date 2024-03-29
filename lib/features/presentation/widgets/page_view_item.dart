import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:testapp/core/utils/size_config.dart';
import 'package:testapp/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70,),
        Text(
          
          'unizone',
          
          style: TextStyle(
              
                  fontWeight: FontWeight.w400,
            fontFamily: 'NicoMoji',
            fontSize: 40,
            color: const Color(0xff00A0DC),
          ),
          textAlign: TextAlign.center,
        ),
                  const VerticalSpace(1),

        SizedBox(
            height:250, child: Image.asset(image!)),
        const VerticalSpace(1),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'GillSans',
            fontSize: 28,
            color: const Color(0xff263238),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Text(
  subTitle!,
  style: TextStyle(
    decoration: TextDecoration.combine([
  
      TextDecoration.underline,
    ]),
    decorationThickness: 5,
    decorationColor: Colors.blue.withOpacity(0.5),
    fontWeight: FontWeight.w700,
    fontFamily: 'GillSansDisplay',
    fontSize: 28,
    color: const Color(0xff263238),
  ),
  textAlign: TextAlign.end,
)
        ),
      ],
    );
  }
}
