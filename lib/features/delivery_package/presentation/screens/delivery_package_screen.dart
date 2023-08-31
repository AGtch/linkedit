import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../../../utils/helper/text_form_controllers.dart';
import '../../data/repositories/firebase_delivery_package_repository.dart';
import '../widgets/delivery_package_listview.dart';

class DeliveryPackagesScreen extends StatefulWidget {
  const DeliveryPackagesScreen({super.key});

  @override
  State<DeliveryPackagesScreen> createState() => _DeliveryPackagesScreenState();
}

class _DeliveryPackagesScreenState extends State<DeliveryPackagesScreen> {
  bool _isVisible = true;
  FirebaseDeliveryPackageRepository repo = FirebaseDeliveryPackageRepository(
      firebaseFirestore: FirebaseFirestore.instance,
      firebaseAuth: FirebaseAuth.instance);

  @override
  void initState() {
    super.initState();
    deliveryPackagesListviewScrollController.addListener(() {
      if (deliveryPackagesListviewScrollController
              .position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (deliveryPackagesListviewScrollController
              .position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Packages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          DeliveryPackagesListview(
            deliveryPackagesListviewScrollController:
                deliveryPackagesListviewScrollController,
          ),
          AnimatedPositioned(
            curve: Curves.decelerate,
            right: _isVisible ? 18 : -56,
            bottom: _isVisible ? 18 : -56,
            duration: const Duration(milliseconds: 500),
            child: FloatingActionButton(
              onPressed: () async {
                // final GeoPoint packageSource = GeoPoint(30.033333, 31.233334);
                // final GeoPoint packageDestination =
                //     GeoPoint(31.205753, 29.924526);
                //
                // final deliveryPackageModel = DeliveryPackageModel(
                //     packageTitle: "packageTitle",
                //     packageDescription: "packageDescription",
                //     packageSource: packageSource,
                //     id: '3',
                //     deliveryCost: 3,
                //     isDelivered: true,
                //     packageDestination: packageDestination);
                // repo.addDeliveryPackageToFirebaseCloudDatabase(
                //     deliveryPackageModel: deliveryPackageModel);

                Navigator.pushNamed(context, addDeliveryPackageDetailsScreen);

                // Navigator.pushNamed(context, confirmationPackageScreen);
              },
              backgroundColor: Colors.black87,
              foregroundColor: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
