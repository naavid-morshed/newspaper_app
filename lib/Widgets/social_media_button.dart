import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    super.key,
    required this.size,
    this.onTap,
    required this.imageString,
  });

  final Size size;
  final void Function()? onTap;
  final String imageString;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: size.width * .02),
      child: InkWell(
        onTap: onTap??(){
          if (kDebugMode) {
            print('SocialMedia_Button function not configured');
          }
        },
        child: Image.asset(
          imageString,
          scale: 2.5,
        ),
      ),
    );
  }
}
