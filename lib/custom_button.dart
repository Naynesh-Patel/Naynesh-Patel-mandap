import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onTap;
  final Color? color;
  final double? height;
  final double? width;
  final double? paddingHorizontal;
  final double? paddingVertical;
  final double? borderRadius;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    this.color,
    this.height,
    this.width,
    this.paddingHorizontal,
    this.paddingVertical,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Colors.black,
      borderRadius: BorderRadius.circular(borderRadius ?? 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius ?? 4),
        onTap: () {
          onTap();
        },
        child: Container(
          constraints: BoxConstraints(maxHeight: height ?? 50),
          width: 0.30,
          padding: EdgeInsets.symmetric(
              vertical: paddingVertical ?? 8,
              horizontal: paddingHorizontal ?? 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 4)),
          child: Center(
              child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style:const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
