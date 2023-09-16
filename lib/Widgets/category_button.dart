import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    required this.size,
    required this.buttonName,
    this.onPressed,
  });

  final Size size;
  final String buttonName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height * .01),
      child: ElevatedButton(
        onPressed: onPressed??(){
          if (kDebugMode) {
            print('CategoryButton function not configured');
          }
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            size.width * .92,
            size.height * .075,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8.5,
            ),
          ),
          backgroundColor: Colors.black87.withOpacity(.15),
          shadowColor: Colors.transparent,
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87.withOpacity(.7),
          ),
        ),
      ),
    );
  }
}
