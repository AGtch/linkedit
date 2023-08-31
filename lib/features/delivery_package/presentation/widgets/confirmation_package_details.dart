import 'package:flutter/material.dart';

class ConfirmationPackageDetails extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const ConfirmationPackageDetails({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
          child: Image.asset(
            "assets/images/package.png",
            fit: BoxFit.cover,
            height: 150,
            width: 150,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
