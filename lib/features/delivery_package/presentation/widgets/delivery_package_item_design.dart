import 'package:flutter/material.dart';

class DeliveryPackageItemDesign extends StatelessWidget {
  const DeliveryPackageItemDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'assets/images/package.png',
              height: 100,
              width: 100,
            ),
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('package title'),
                Text('package description',
                    maxLines: 3, overflow: TextOverflow.ellipsis),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('take ~ 30 mints'),
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: 8),
                      child: Text('paid'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
