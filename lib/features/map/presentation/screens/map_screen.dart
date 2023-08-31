import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../utils/helper/injection.dart';
import '../../../../utils/helper/location_helper.dart';
import '../../../../utils/routes/app_router.dart';
import '../cubit/place_details_cubit/place_details_cubit.dart';
import '../cubit/selected_place_cubit/selected_place_cubit.dart';
import '../widgets/floating_search_bar.dart';
import '../widgets/map_widget.dart';
import '../widgets/submit_address_widget.dart';

class MapScreen extends StatefulWidget {
  late Position? position;

  TextEditingController textEditingController;
  final MapScreenType mapType;

  MapScreen(
      {super.key,
      required this.position,
      required this.textEditingController,
      required this.mapType});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late CameraPosition cameraPosition;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: LocationHelper().getCurrentLocation(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              widget.position = snapshot.data;
              cameraPosition = CameraPosition(
                bearing: 190.8301395799,
                zoom: 16.100,
                target: LatLng(
                  widget.position!.latitude,
                  widget.position!.longitude,
                ),
              );
              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        PlaceDetailsCubit(placesDetailsRepository: getIt.get()),
                  ),
                  BlocProvider(create: (context) => SelectedPlaceCubit()),
                ],
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(fit: StackFit.expand, children: [
                        MapWidget(
                            cameraPosition: CameraPosition(
                                target: LatLng(widget.position!.latitude,
                                    widget.position!.longitude),
                                zoom: 17),
                            mapType: widget.mapType),
                        const SearchActionBar(),
                      ]),
                    ),
                    SubmitAddressWidget(
                      textEditingController: widget.textEditingController,
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        LocationHelper().getCurrentLocation();
                      });
                    },
                    child: const Text('Get Location permission')),
              );
            }
          },
        ),
      ),
    );
  }
}
