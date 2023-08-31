import 'package:flutter/material.dart';

import '../../../../utils/helper/text_form_controllers.dart';

class SubmitAddressWidget extends StatelessWidget {
  TextEditingController textEditingController;

  SubmitAddressWidget({super.key, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          TextFormField(
            controller: addressTextController,
            readOnly: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.place,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 2,
                backgroundColor: Colors.black,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                textEditingController.text = addressTextController.text;
                Navigator.pop(context);
              },
              child: Text('Submit address'),
            ),
          ),
        ],
      ),
    );
  }
}
