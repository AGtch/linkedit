import 'package:flutter/material.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../../../utils/helper/text_form_controllers.dart';
import '../../../../widgets/custom_elevated_button.dart';
import '../../../../widgets/custom_text_field.dart';
import '../widgets/confirmation_package_details.dart';

class ConfirmationPackageScreen extends StatelessWidget {
  const ConfirmationPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ConfirmationPackageDetails(
              title: 'title',
              description:
                  "fdsffgfhgfhgfjhkfewfidsfiodsgfgfdgdfjgiji iditrt trretortire toertreto ddsfsdfdfsd dfs ",
              imageUrl: 'url',
            ),
            SizedBox(
              height: 36,
            ),
            CustomTextFormField(
              labelText: 'From',
              inputType: TextInputType.text,
              maxLines: null,
              prefixIcon: const Icon(Icons.location_on),
              textController: sourceLocationTextEditingController,
              isEnabled: false,
              // validator: _validateTextFormField,
              onSaved: (_) {},
              onChanged: (_) {},
              onFieldSubmitted: (_) {},
              readOnly: true,
              // onTap: () {
              //   Navigator.pushNamed(context, mapScreen,
              //       arguments: MapScreenArguments(
              //           position: null,
              //           textEditingController:
              //               fromLocationTextEditingController,
              //           mapTypeScreen: MapScreenType.sourceScreen));
              // },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              labelText: 'To',
              inputType: TextInputType.text,
              maxLines: null,
              prefixIcon: const Icon(Icons.location_on),
              textController: destinationLocationTextEditingController,
              isEnabled: false,
              // validator: _validateTextFormField,
              onSaved: (_) {},
              onChanged: (_) {},
              onFieldSubmitted: (_) {},
              readOnly: true,
              // onTap: () {
              //   Navigator.pushNamed(context, mapScreen,
              //       arguments: MapScreenArguments(
              //           position: null,
              //           textEditingController: toLocationTextEditingController,
              //           mapTypeScreen: MapScreenType.destinationScreen));
              // },
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              inputType: TextInputType.text,
              maxLines: null,
              prefixIcon: const Icon(Icons.location_on),
              textController: distanceTextController,
              isEnabled: true,
              // validator: _validateTextFormField,
              onSaved: (_) {},
              onChanged: (_) {},
              onFieldSubmitted: (_) {},
              onTap: () {
                Navigator.pushNamed(context, mapDirectionScreen);
              },
              readOnly: true,
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  height: 120,
                  buttonColor: Colors.black87,
                  buttonText: "Check Out",
                  onPressed: () {},
                ),
                Text(
                  "300 EGP",
                  style: TextStyle(color: Colors.blue, fontSize: 28),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
