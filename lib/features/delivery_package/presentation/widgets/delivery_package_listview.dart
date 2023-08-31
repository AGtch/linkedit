import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'delivery_package_item_design.dart';

@immutable
class DeliveryPackagesListview extends StatelessWidget {
  final ScrollController deliveryPackagesListviewScrollController;

  const DeliveryPackagesListview(
      {super.key, required this.deliveryPackagesListviewScrollController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: deliveryPackagesListviewScrollController,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const DeliveryPackageItemDesign();
      },
    );
  }
}
