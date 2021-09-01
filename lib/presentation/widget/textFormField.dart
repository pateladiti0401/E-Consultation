import 'package:e_consultation/core/constant/customColors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final String hintText;
  final String errorText;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  String? Function(String?) validator;
  String? Function(String?)? onChanged;

  TextFieldWidget({
    Key? key,
    required this.text,
    this.errorText = '',
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.controller,
    this.onChanged,
    this.focusNode,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: CustomColors.backgroundColor,
      ),
      child: TextFormField(
        focusNode: focusNode,
        keyboardType: keyboardType,
        // enabled: isEnabled,
        obscureText: obscureText,
        obscuringCharacter: '*',
        controller: this.controller,
        validator: validator,
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: TextStyle(
          fontSize: 14,
        ),
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
          labelText: '$text',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: TextStyle(color: CustomColors.lightGrey),
          fillColor: Colors.black,
          focusColor: Colors.black,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: CustomColors.lightBlue),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
