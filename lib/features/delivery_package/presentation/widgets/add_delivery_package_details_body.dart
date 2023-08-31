import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../../../utils/helper/text_form_controllers.dart';
import '../../../../utils/routes/app_router.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../data/models/delivery_package_model.dart';
import '../cubit/delivery_package_cubit.dart';
import '../cubit/delivery_package_state.dart';

class AddDeliveryPackageDetailsBody extends StatefulWidget {
  final String packageSourceAddress;

  final String packageDestinationAddress;

  const AddDeliveryPackageDetailsBody(
      {Key? key,
      required this.packageSourceAddress,
      required this.packageDestinationAddress})
      : super(key: key);

  @override
  State<AddDeliveryPackageDetailsBody> createState() =>
      _AddDeliveryPackageDetailsBodyState();
}

class _AddDeliveryPackageDetailsBodyState
    extends State<AddDeliveryPackageDetailsBody> {
  final Border _border = Border.all(
    color: Colors.grey,
    width: 2.0,
  );

  final ButtonStyle _buttonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(6),
    enableFeedback: true,
    backgroundColor: MaterialStateProperty.all(Colors.black87),
    minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
  );

  final _formKey = GlobalKey<FormState>();

  File? _image;
  late bool isImageAddedFirstTime;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    isImageAddedFirstTime = false;
    if (widget.packageSourceAddress.isNotEmpty ||
        widget.packageDestinationAddress.isNotEmpty) {
      destinationLocationTextEditingController.text =
          widget.packageDestinationAddress.toString();
      sourceLocationTextEditingController.text =
          widget.packageSourceAddress.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: BlocListener<AddingDeliveryPackageCubit,
            AddingDeliveryPackageState>(
          listener: (context, state) {
            if (state is AddingPackageSuccess) {
              Navigator.pop(context);
            }
          },
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: _takePhoto,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[500]!,
                          offset: Offset(0.0, 1.5),
                          blurRadius: 1.5,
                        ),
                      ],
                    ),
                    child: _image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              _image!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt,
                                  size: 46,
                                  color: Colors.grey[500],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Click to take a photo',
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
                Visibility(
                  visible: isImageAddedFirstTime,
                  child: const Text(
                    '* Photo is required',
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  labelText: 'Package Title',
                  inputType: TextInputType.text,
                  maxLines: 1,
                  prefixIcon: const Icon(Icons.title),
                  textController: titleTextEditingController,
                  isEnabled: true,
                  validator: _validateTextFormField,
                  onSaved: (_) {},
                  onChanged: (_) {},
                  onFieldSubmitted: (_) {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  labelText: 'Package Details',
                  inputType: TextInputType.text,
                  maxLines: null,
                  prefixIcon: const Icon(Icons.text_snippet_sharp),
                  textController: detailsTextEditingController,
                  isEnabled: true,
                  validator: _validateTextFormField,
                  onSaved: (_) {},
                  onChanged: (_) {},
                  onFieldSubmitted: (_) {},
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  labelText: 'From',
                  inputType: TextInputType.text,
                  maxLines: null,
                  prefixIcon: const Icon(Icons.location_on),
                  textController: sourceLocationTextEditingController,
                  isEnabled: true,
                  validator: _validateTextFormField,
                  onSaved: (_) {},
                  onChanged: (_) {},
                  onFieldSubmitted: (_) {},
                  readOnly: true,
                  onTap: () {
                    Navigator.pushNamed(context, mapScreen,
                        arguments: MapScreenArguments(
                            position: null,
                            textEditingController:
                                sourceLocationTextEditingController,
                            mapTypeScreen: MapScreenType.sourceScreen));
                  },
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
                  isEnabled: true,
                  validator: _validateTextFormField,
                  onSaved: (_) {},
                  onChanged: (_) {},
                  onFieldSubmitted: (_) {},
                  readOnly: true,
                  onTap: () {
                    Navigator.pushNamed(context, mapScreen,
                        arguments: MapScreenArguments(
                            position: null,
                            textEditingController:
                                destinationLocationTextEditingController,
                            mapTypeScreen: MapScreenType.destinationScreen));
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: _buttonStyle,
                  onPressed: () async {
                    // Navigator.pushNamed(context, mapDirectionScreen);
                    // DirectionsData routes = await getIt
                    //     .get<DirectionsRepository>()
                    //     .fetchDirections();
                    // print("______________+ _+ + + ${routes.totalDistance}");

                    isImageAddedFirstTime = !_isImageAdded(_image);
                    if (_formKey.currentState!.validate() &&
                        _isImageAdded(_image)) {
                      _formKey.currentState?.save();
                      DeliveryPackageModel deliveryPackageModel =
                          DeliveryPackageModel(
                              packageTitle: titleTextEditingController.text,
                              packageDescription:
                                  detailsTextEditingController.text,
                              packageSourceAddress:
                                  sourceLocationTextEditingController.text,
                              packageDestinationAddress:
                                  destinationLocationTextEditingController
                                      .text);
                      Navigator.pushNamed(context, confirmationPackageScreen);
                      // BlocProvider.of<AddingDeliveryPackageCubit>(context)
                      //     .addDeliveryPackageToFirebaseStore(
                      //         deliveryPackageModel: deliveryPackageModel);
                    } else {
                      setState(() {
                        _isImageAdded(_image);
                      });
                    }
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      imageQuality: 100,
    );
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        isImageAddedFirstTime = false;
      } else {
        print('No image selected.');
      }
    });
  }

  bool _isImageAdded(File? image) {
    return image != null;
  }

  String? _validateTextFormField(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
}
