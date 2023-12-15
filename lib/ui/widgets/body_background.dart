import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({super.key, required this.child});


  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          SvgPicture.asset('assets/images/background.svg',width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
          child
        ],
      );
  }
}
