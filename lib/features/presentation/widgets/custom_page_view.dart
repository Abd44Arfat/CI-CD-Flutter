import 'package:flutter/material.dart';
import 'package:testapp/features/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController ,
      children: [
        PageViewItem(
          image: 'assets/images/image1.png',
          title: 'test git hup actions',
          subTitle: 'Best choice for everyone.',
        ),
        PageViewItem(
          image: 'assets/images/image2.png',
          title: 'Learn Anytime,',
          subTitle: 'Anywhere. Accelerate Your Future and beyond.',
        ),
        PageViewItem(
          image: 'assets/images/image3.png',
          title: 'Best community for both',
          subTitle: 'Teachers & Learners',
        ),
      ],
    );
  }
}
