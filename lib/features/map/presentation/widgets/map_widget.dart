import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../../../utils/routes/app_router.dart';
import '../../../delivery_package/data/models/delivery_package_model.dart';
import '../../data/models/place_details_models/location_coordinates.dart';
import '../../data/models/place_details_models/place_details_query.dart';
import '../cubit/place_details_cubit/place_details_cubit.dart';
import '../cubit/selected_place_cubit/selected_place_cubit.dart';

class MapWidget extends StatefulWidget {
  late CameraPosition cameraPosition;
  MapScreenType mapType;

  MapWidget({super.key, required this.cameraPosition, required this.mapType});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  LocationCoordinates? selectedLocationCoordinates;

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  late CameraPosition goToSearchedForPlace;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SelectedPlaceCubit, SelectedPlaceState>(
      listener: (context, state) {
        if (state is SelectedPlaceSuccessfully) {
          String sessionToken = Uuid().v1();

          setState(() {
            BlocProvider.of<PlaceDetailsCubit>(context).getPlaceDetails(
                detailsQuery: PlaceDetailsQuery(
                    fields: 'geometry',
                    apiPlaceAutocompleteKey: googleAPIkey,
                    sessionToken: sessionToken,
                    placeId: state.selectedPlaceInfo.placeId));
          });
        }
      },
      child: BlocBuilder<PlaceDetailsCubit, PlaceDetailsState>(
        builder: (context, state) {
          if (state is PlaceLoadedSuccessfully) {
            selectedLocationCoordinates = state.locationCoordinates;
            if (widget.mapType == MapScreenType.sourceScreen) {
              DeliveryPackageModel.packageSourceLocation = GeoPoint(
                  selectedLocationCoordinates!.latitude,
                  selectedLocationCoordinates!.longitude);
            }
            if (widget.mapType.name == MapScreenType.destinationScreen.name) {
              DeliveryPackageModel.packageDestinationLocation = GeoPoint(
                  selectedLocationCoordinates!.latitude,
                  selectedLocationCoordinates!.longitude);
            }
            goToMySearchedForLocation(selectedLocationCoordinates!);
          }

          return GoogleMap(
            buildingsEnabled: true,
            zoomGesturesEnabled: true,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            scrollGesturesEnabled: true,
            trafficEnabled: true,
            zoomControlsEnabled: true,
            tiltGesturesEnabled: true,
            initialCameraPosition: widget.cameraPosition,
            markers: <Marker>{
              (selectedLocationCoordinates != null)
                  ? Marker(
                      markerId: MarkerId('searched_location'),
                      position: LatLng(
                        selectedLocationCoordinates!.latitude,
                        selectedLocationCoordinates!.longitude,
                      ),
                      infoWindow: const InfoWindow(
                        title: 'Searched Location',
                      ),
                    )
                  : Marker(markerId: MarkerId('searched_location'))
            },
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          );
        },
      ),
    );
  }

  Future<void> goToMySearchedForLocation(
      LocationCoordinates selectedLocationCoordinates) async {
    goToSearchedForPlace = CameraPosition(
      bearing: 0.0,
      tilt: 0.0,
      target: LatLng(
        selectedLocationCoordinates.latitude,
        selectedLocationCoordinates.longitude,
      ),
      zoom: 13,
    );

    final GoogleMapController controller = await _controller.future;
    controller
        .animateCamera(CameraUpdate.newCameraPosition(goToSearchedForPlace));
  }
}
