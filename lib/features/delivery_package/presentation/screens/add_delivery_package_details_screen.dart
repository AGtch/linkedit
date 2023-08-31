import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/helper/injection.dart';
import '../../data/repositories/firebase_delivery_package_repository.dart';
import '../cubit/delivery_package_cubit.dart';
import '../widgets/add_delivery_package_details_body.dart';

class AddDeliveryPackageDetailsScreen extends StatelessWidget {
  const AddDeliveryPackageDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Package Details',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => AddingDeliveryPackageCubit(
            firebaseDeliveryPackageRepository:
                getIt.get<FirebaseDeliveryPackageRepository>()),
        child: AddDeliveryPackageDetailsBody(
            packageDestinationAddress: '', packageSourceAddress: ''),
      ),
    );
  }
}
