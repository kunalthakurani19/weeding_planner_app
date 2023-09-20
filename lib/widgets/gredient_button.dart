import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final Gradient gradient;
  final Gradient bordergradient;
  final double? width;
  final double? height;

  const GradientButton(
      {super.key,
      required this.onPressed,
      required this.child,
      required this.gradient,
      this.height,
      this.width,
      required this.bordergradient});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      splashColor: Colors.black12,
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          32.0,
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10.0),
          border: GradientBoxBorder(
            gradient: bordergradient,
            width: 4,
          ),
        ),
        child: Container(
            constraints:
                BoxConstraints(maxWidth: width ?? 100, minHeight: height ?? 50),
            alignment: Alignment.center,
            child: child),
      ),
    );
  }
}
