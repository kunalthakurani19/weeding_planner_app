import 'package:flutter/material.dart';

import '../util/app_colors.dart';
import '../util/appstyle.dart';
import 'hitext.dart';

class WPButton extends StatelessWidget {
  final Function(String message)? onError;
  final bool? loading;
  final String text;
  final Color? buttonColor, borderColor, loaderColor;
  final Function()? onPressed;
  final double? borderRadius;
  final double? width, height;
  final Color? color;
  final bool? clicked;

  const WPButton(
    this.text, {
    this.onPressed,
    this.buttonColor,
    this.borderColor,
    this.borderRadius,
    this.width,
    this.height,
    this.loading,
    this.loaderColor,
    super.key,
    this.onError,
    this.color,
    this.clicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0.1),
          foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color?>(
            buttonColor ?? AppColors.greenish,
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              width: 1.0,
              color: borderColor ?? AppColors.transprent,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 25),
            ),
          ),
        ),
        onPressed: (clicked ?? false) ? null : onPressed,
        child: loading == true
            ? Center(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 1.2,
                    color: loaderColor,
                  ),
                ),
              )
            : WPText(
                text,
                style: AppStyles.inter.copyWith(
                    fontSize: 16.0, fontWeight: FontWeight.w600, color: color),
              ),
      ),
    );
  }
}
