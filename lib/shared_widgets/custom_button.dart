import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onTap,
    required this.title,
    this.icon,
    this.backgroundColor,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String title;
  final Icon? icon;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        // backgroundColor: backgroundColor ?? kOrangeColor,
        minimumSize: Size(size.width, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: icon!,
            ),
          Text(
            title,
            // style: const TextStyle(color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
