import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

import '../utils/helper/location_helper.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // AuthCubit authCubit = AuthCubit();
  LocationHelper locationHelper = LocationHelper();

  Position? position;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    position = (await locationHelper.getCurrentLocation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              position = (await locationHelper.getCurrentLocation());

              // authCubit.logOut();
              // Navigator.popAndPushNamed(context, loginScreen);
              Fluttertoast.showToast(
                  msg: (' ${position?.altitude} : ${position?.longitude}'),
                  fontSize: 18,
                  gravity: ToastGravity.CENTER,
                  toastLength: Toast.LENGTH_LONG);
            },
            child: const Text('Log-out')),
      ),
    );
  }
}
