import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../../../utils/helper/text_form_controllers.dart';
import '../../../../widgets/custom_text_field.dart';
import '../cubits/login_cubit/login_cubit.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool _obscurePassword = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "Welcome back",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 60),
              CustomTextFormField(
                maxLines: 1,
                labelText: 'UserName',
                textController: userNameController,
                prefixIcon: const Icon(Icons.person_outline),
                isEnabled: true,
                inputType: TextInputType.name,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                labelText: 'Password',
                textController: passwordController,
                prefixIcon: const Icon(Icons.password_outlined),
                isEnabled: true,
                maxLines: 1,
                obscureText: _obscurePassword,
                inputType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: _obscurePassword
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined)),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter username.";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 60),
              Column(
                children: [
                  BlocListener<LoginCubit, LoginState>(
                    listener: (context, state) {
                      // TODO: implement listener
                      if (state is LoginSuccessfullyState) {
                        Navigator.pushReplacementNamed(
                            context, deliveryPackageScreen);
                      } else if (state is LoadingSignupState) {
                        setState(() {
                          isLoading = true;
                        });
                      } else {
                        isLoading = false;
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.red.shade600,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            behavior: SnackBarBehavior.floating,
                            content: const Text(""
                                "Maybe user name or password is incorrect , please try again"),
                          ),
                        );
                      }
                    },
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        minimumSize: const Size.fromHeight(50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          BlocProvider.of<LoginCubit>(context)
                              .loginWithUserNameAndPassword(
                            email: userNameController.text,
                            password: passwordController.text,
                          );
                        }
                      },
                      child: (isLoading)
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text("Login"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, signupScreen);
                        },
                        child: const Text("Signup"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
