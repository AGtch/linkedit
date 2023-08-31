import 'package:LinkedIt/features/directions/data/repositories/directions_repository.dart';
import 'package:LinkedIt/features/directions/presentation/cubit/directions_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import '../../features/delivery_package/presentation/screens/add_delivery_package_details_screen.dart';
import '../../features/delivery_package/presentation/screens/confirmation_package.dart';
import '../../features/delivery_package/presentation/screens/delivery_package_screen.dart';
import '../../features/directions/presentation/screens/map_directions_screen.dart';
import '../../features/home_screen.dart';
import '../../features/login/presentation/cubits/login_cubit/login_cubit.dart';
import '../../features/login/presentation/screens/login.dart';
import '../../features/map/presentation/screens/map_screen.dart';
import '../../features/signup/data/repository/imp_signup_repository.dart';
import '../../features/signup/presentation/cubit/signup_cubit.dart';
import '../../features/signup/presentation/screens/signup_screen.dart';
import '../constants/strings/pages_name.dart';
import '../helper/injection.dart';

enum MapScreenType { sourceScreen, destinationScreen }

class MapScreenArguments {
  final Position? position;

  final TextEditingController textEditingController;
  final MapScreenType mapTypeScreen;

  MapScreenArguments(
      {required this.position,
      required this.textEditingController,
      required this.mapTypeScreen});
}

class AppRouter {
  LoginCubit loginCubit;

  AppRouter({required this.loginCubit});

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<LoginCubit>.value(
            value: loginCubit,
            child: const Login(),
          ),
        );
      case signupScreen:
        return MaterialPageRoute(
          builder: (context) =>
              // BlocProvider<PhoneVerificationCubit>.value(
              //   value: phoneVerificationCubit,
              //   child: const LoginScreen(),
              // ),
              BlocProvider(
            create: (context) => SignupCubit(
                impSignupRepository: getIt.get<ImpSignupRepository>()),
            child: const SignupScreen(),
          ),
        );
      // case otpScreen:
      //   final phoneNumber = settings.arguments as String;
      //   return MaterialPageRoute(
      //     builder: (context) => BlocProvider<PhoneVerificationCubit>.value(
      //       value: phoneVerificationCubit,
      //       child: OtpScreen(phoneNumber: phoneNumber),
      //     ),
      //   );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case deliveryPackageScreen:
        return MaterialPageRoute(
          builder: (context) => const DeliveryPackagesScreen(),
        );
      case addDeliveryPackageDetailsScreen:
        return MaterialPageRoute(
          maintainState: true,
          builder: (context) => const AddDeliveryPackageDetailsScreen(),
        );
      case confirmationPackageScreen:
        return MaterialPageRoute(
          maintainState: true,
          builder: (context) => const ConfirmationPackageScreen(),
        );
      case mapDirectionScreen:
        return MaterialPageRoute(
          maintainState: true,
          builder: (context) => BlocProvider(
            create: (context) => DirectionsCubit(
                directionsRepository: getIt.get<DirectionsRepository>()),
            child: const MapDirectionScreen(),
          ),
        );
      case mapScreen:
        final mapArgument = settings.arguments as MapScreenArguments;
        return MaterialPageRoute(
          builder: (context) => MapScreen(
            position: mapArgument.position,
            textEditingController: mapArgument.textEditingController,
            mapType: mapArgument.mapTypeScreen,
          ),
        );
    }
    return null;
  }
}
