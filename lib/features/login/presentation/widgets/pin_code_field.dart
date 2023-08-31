import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeField extends StatelessWidget {
  final TextEditingController otpTextEditingController;

  PinCodeField({
    super.key,
    required this.otpTextEditingController,
  });

  String otpCode = '+970';

  @override
  Widget build(BuildContext context) {
    return _buildPinCodeFields(context);
  }

  Widget _buildPinCodeFields(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      length: 6,
      obscureText: false,
      animationType: AnimationType.scale,
      controller: otpTextEditingController,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: .5,
        activeColor: Colors.lightBlue,
        inactiveColor: Colors.lightBlue,
        inactiveFillColor: Colors.white,
        activeFillColor: Colors.lightBlue,
        selectedColor: Colors.lightBlue,
        selectedFillColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 600),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (submittedCode) {
        otpCode = submittedCode;
        print("Completed");
      },
      onChanged: (value) {
        otpCode = value;
        print(value);
      },
    );
  }
}
