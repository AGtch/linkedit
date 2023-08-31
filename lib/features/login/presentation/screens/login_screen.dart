// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:linkedit/features/login/presentation/cubits/auth_cubit/phone_verification_cubit.dart';
// import 'package:linkedit/utils/constants/strings/pages_name.dart';
//
// import '../../../../widgets/custom_text_field.dart';
// import '../cubits/auth_cubit/phone_verification_state.dart';
//
// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   bool passwordVisible = false;
//   String phoneNumber = '';
//   late TextEditingController textEditingController;
//   final _formKey = GlobalKey<FormState>();
//   String countryCode = '+20';
//   bool authIsLoading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     authIsLoading = false;
//     textEditingController = TextEditingController(text: '1023203721');
//   }
//
//   Future<void> _register(
//       BuildContext context, String phoneNumber, String countryCode) async {
//     _formKey.currentState!.save();
//
//     await BlocProvider.of<PhoneVerificationCubit>(context)
//         .verifyPhoneNumber('$countryCode$phoneNumber');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               BlocListener<PhoneVerificationCubit, PhoneVerificationState>(
//                 listenWhen: (previous, current) {
//                   return previous != current;
//                 },
//                 listener: (context, state) {
//                   if (state is PhoneVerificationLoadingState) {
//                     setState(() {
//                       authIsLoading = true;
//                     });
//                   } else if (state is PhoneVerificationCodeSentState) {
//                     authIsLoading = false;
//
//                     Navigator.of(context)
//                         .pushNamed(otpScreen, arguments: phoneNumber)
//                         .then(
//                       (value) {
//                         setState(() {
//                           authIsLoading = false;
//                         });
//                       },
//                     );
//                   }
//                 },
//                 child: Container(),
//               ),
//               Column(
//                 children: [
//                   const Text(
//                     'WELLCOM',
//                     style: TextStyle(fontSize: 36),
//                   ),
//                   const SizedBox(
//                     height: 60,
//                   ),
//                   Row(
//                     children: [
//                       CountryCodePicker(
//                         initialSelection: 'EG',
//                         enabled: !authIsLoading,
//                         onChanged: (value) {
//                           countryCode = value.dialCode!;
//                           print(countryCode);
//                         },
//                         boxDecoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(26),
//                             border: Border.all(
//                                 color: Colors.indigo,
//                                 style: BorderStyle.solid)),
//                       ),
//                       Expanded(
//                         flex: 2,
//                         child: Form(
//                           key: _formKey,
//                           child: CustomTextFormField(
//                             isEnabled: !authIsLoading,
//                             inputType: TextInputType.phone,
//                             hint: 'Phone number',
//                             textController: textEditingController,
//                             onSaved: (value) {},
//                             onFieldSubmitted: (p0) {},
//                             onChanged: (value) {},
//                             maxLines: 1,
//                             validator: (String? value) {
//                               if (value!.isEmpty) {
//                                 return 'Please Enter phone number';
//                               } else if (value.length < 11) {
//                                 return 'Enter a valid phone number';
//                               }
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(textEditingController.text)));
//                     phoneNumber = textEditingController.text;
//                     setState(() {
//                       authIsLoading = false;
//
//                       _register(context, phoneNumber, countryCode);
//                     });
//                   },
//                   style: ElevatedButton.styleFrom(
//                       shape: const CircleBorder(), //<-- SEE HERE
//                       padding: const EdgeInsets.all(12),
//                       backgroundColor: Colors.indigo),
//                   child: authIsLoading
//                       ? const CircularProgressIndicator()
//                       : const Icon(
//                           Icons.navigate_next_rounded,
//                           color: Colors.black,
//                           size: 40,
//                         ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
