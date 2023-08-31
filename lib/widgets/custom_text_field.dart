// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueSetter? onChanged;
  final Function(String)? onFieldSubmitted;
  final TextEditingController textController;
  final int? maxLines;
  final String? hint;
  Function()? onTap;
  final bool? isEnabled;
  final bool readOnly;
  final bool obscureText;

  final String? prefixText;
  final String? labelText;

  final Icon? prefixIcon;
  final Widget? suffixIcon;

  CustomTextFormField(
      {Key? key,
      required this.textController,
      this.inputType,
      this.onSaved,
      this.onChanged,
      this.hint,
      this.maxLines,
      this.validator,
      this.onFieldSubmitted,
      this.isEnabled,
      this.onTap,
      this.prefixText,
      this.suffixIcon,
      this.labelText,
      this.readOnly = false,
      this.obscureText = false,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        keyboardType: inputType,
        onChanged: onChanged,
        onSaved: onSaved,
        controller: textController,
        onFieldSubmitted: onFieldSubmitted,
        maxLines: maxLines,
        validator: validator,
        enabled: isEnabled,
        onTap: onTap,
        readOnly: readOnly,
        enableSuggestions: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
