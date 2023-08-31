import 'package:LinkedIt/features/directions/data/models/directions_data.dart';
import 'package:LinkedIt/features/directions/presentation/cubit/directions_cubit.dart';
import 'package:LinkedIt/features/directions/presentation/cubit/directions_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../utils/helper/text_form_controllers.dart';

class MapDirectionScreen extends StatefulWidget {
  const MapDirectionScreen({super.key});

  @override
  State<MapDirectionScreen> createState() => _MapDirectionScreenState();
}

class _MapDirectionScreenState extends State<MapDirectionScreen> {
  DirectionsData? directionsResponse;

  bool isDistanceAvailable = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<DirectionsCubit>(context).getDataRoutes(
        sourceAddress: sourceLocationTextEditingController.text.toString(),
        destinationAddress:
            destinationLocationTextEditingController.text.toString());
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    isDistanceAvailable = false;
    distance.clear();
  }

  GoogleMapController? _mapController;

  final LatLng _origin =
      const LatLng(37.7749, -122.4194); // Origin position (San Francisco)
  final LatLng _destination =
      const LatLng(34.0522, -118.2437); // Destination position (Los Angeles)

  late Marker _originMarker;

  late Marker _destinationMarker;
  late List<LatLng> polylinePoints;

  Set<Marker> _markers = {};

/*

 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Map with Directions'),
      // ),
      body: BlocBuilder<DirectionsCubit, DirectionsState>(
        builder: (context, state) {
          if (state is Loaded) {
            directionsResponse = state.directionData;

            isDistanceAvailable = true;

            print(
                "isDistanceAvailable isDistanceAvailable isDistanceAvailable isDistanceAvailable $isDistanceAvailable");
            if (directionsResponse != null) {
              distance.text = directionsResponse!.totalDistance.toString();
              timeForDelivery.text =
                  directionsResponse!.totalDuration.toString();
              _markers.add(Marker(
                markerId: const MarkerId('origin'),
                position: directionsResponse!.sourceLocation,
                infoWindow: const InfoWindow(title: 'Origin'),
              ));
              _markers.add(Marker(
                markerId: const MarkerId('destination'),
                position: directionsResponse!.destinationLocation,
                infoWindow: const InfoWindow(title: 'Destination'),
              ));
              polylinePoints = directionsResponse!.polylinePoints
                  .map((e) => LatLng(e.latitude, e.longitude))
                  .toList();
              _mapController?.animateCamera(
                CameraUpdate.newLatLngBounds(directionsResponse!.bounds, 50.0),
              );
            } else {
              distance.clear();
              isDistanceAvailable = false;
            }
          }
          return Stack(
            children: [
              GoogleMap(
                onMapCreated: (GoogleMapController controller) {
                  _mapController = controller;
                },
                initialCameraPosition: CameraPosition(
                  target: _origin,
                  zoom: 10.0,
                ),
                polylines: (directionsResponse != null)
                    ? {
                        Polyline(
                            polylineId: const PolylineId("SOURCE"),
                            color: Colors.redAccent.shade700,
                            width: 5,
                            points: polylinePoints)
                      }
                    : {},
                markers: _markers,
              ),
              Visibility(
                visible: isDistanceAvailable,
                child: Positioned(
                  top: 720,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: distance,
                            readOnly: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.time_to_leave_rounded,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: timeForDelivery,
                            readOnly: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.access_time_outlined,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
