import 'package:e_consultation/core/constant/customColors.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String? label;
  final void Function()? onPressed;
  const SubmitButton({
    Key? key,
    this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8.0,
            ),
          ),
          color: CustomColors.blue,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Text(
              label!,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 17),
            ),
          ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
