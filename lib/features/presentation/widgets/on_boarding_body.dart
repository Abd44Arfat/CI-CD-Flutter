import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:testapp/core/utils/size_config.dart';
import 'package:testapp/core/widgets/custom_buttons.dart';
import 'package:testapp/features/presentation/widgets/custom_indicator.dart';
import 'package:testapp/features/presentation/widgets/custom_page_view.dart';


class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 30,
      
          bottom: 100,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
              
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: 10,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          
            right: 30,
            bottom: 80,
            child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            )),
      ],
    );
  }
}
