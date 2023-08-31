import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../../../utils/helper/location_helper.dart';
import '../../../../utils/helper/text_form_controllers.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../cubits/auth_cubit/phone_verification_cubit.dart';
import '../cubits/auth_cubit/phone_verification_state.dart';
import '../widgets/pin_code_field.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  String phoneNumber = '+970';
  Position? position;

  OtpScreen({super.key, required this.phoneNumber});

  getCurrentLocation() async {
    position = await LocationHelper().getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              _buildTextInOtpScreen(),
              const SizedBox(
                height: 80,
              ),
              Expanded(
                  flex: 2,
                  child: PinCodeField(
                    otpTextEditingController: otpTextEditingController,
                  )),
              const SizedBox(
                height: 100,
              ),
              BlocListener<PhoneVerificationCubit, PhoneVerificationState>(
                listener: (context, state) {
                  if (state is PhoneVerificationSuccessState) {
                    Navigator.pop(context);
                    Navigator.popAndPushNamed(
                      context,
                      deliveryPackageScreen,
                    );
                  }
                },
                child: Flexible(
                  flex: 1,
                  child: CustomElevatedButton(
                    height: 46,
                    buttonColor: Colors.black87.withAlpha(2),
                    buttonText: 'verify',
                    onPressed: () {
                      getCurrentLocation();

                      BlocProvider.of<PhoneVerificationCubit>(context)
                          .submitOTP(otpTextEditingController.text);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextInOtpScreen() {
    return Column(
      children: [
        const Text('verify your phone number',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 30,
        ),
        RichText(
          text: TextSpan(
            text: 'Enter your 6 digit code number sent to ',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            children: <TextSpan>[
              TextSpan(
                text: phoneNumber.toString(),
                style: const TextStyle(
                  color: Colors.indigo,
                  fontSize: 18,
                  letterSpacing: 2.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  late String otpCode;
}
