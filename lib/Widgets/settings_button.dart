import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.buttonName,
    required this.icon,
    this.onPressed,
  });

  final VoidCallback? onPressed;
  final String buttonName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 13,
          ),
          height: 45,
          child: TextButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  buttonName,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                  ),
                ),
                Icon(
                  icon,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 390,
          child: Divider(
            height: 10,
            color: Colors.black87.withOpacity(.5),
          ),
        )
      ],
    );
  }
}
