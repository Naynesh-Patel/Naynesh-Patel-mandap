import 'package:flutter/material.dart';
import 'package:mandap/app_colors.dart';



class CustomTextField extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final TextInputType? textInputType;
  final Widget? preFixWidget;
  final Widget? suffixFixWidget;
  final int? maxLength;
  final bool? readOnly;
  final bool? enable;
  final Function()? onTap;
  final Function(String)? onChange;
  final double? paddingHorizontal;
  final double? radius;

  const CustomTextField({
    super.key,
    this.textEditingController,
    this.hintText,
    this.textInputType,
    this.suffixFixWidget,
    this.preFixWidget,
    this.maxLength,
    this.readOnly,
    this.enable,
    this.onTap,
    this.onChange,
    this.paddingHorizontal,
    this.radius
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal:paddingHorizontal??16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius??24),
          border: Border.all(color: AppColor.hintColor, width: 1)),
      child: Row(
        children: [
          preFixWidget ?? const SizedBox.shrink(),
          Expanded(
              child: TextField(
            controller: textEditingController,
            keyboardType: textInputType,
            showCursor: true,
            enabled: enable ?? true,
            readOnly: readOnly ?? false,
            cursorColor: Colors.black,
            maxLength: maxLength,
            onChanged: onChange,
            style: TextStyle(
              fontSize: 12
            ),
            decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintStyle: const TextStyle(
                  color: AppColor.hintColor,
                  fontSize: 12
                ),
                hintText: hintText,
                counterText: ""),
            onTap: onTap,
          )),
          suffixFixWidget ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
