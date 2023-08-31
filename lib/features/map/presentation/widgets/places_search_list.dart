import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

import '../../../../utils/constants/strings/pages_name.dart';
import '../../data/models/place_autocomplete_models/place_autocomplete_query.dart';
import '../../data/models/place_autocomplete_models/selected_place_info.dart';
import '../cubit/place_suggestions_cubit/place_suggestions_cubit.dart';
import '../cubit/place_suggestions_cubit/place_suggestions_state.dart';

class PlacesSearchList extends SearchDelegate<SelectedPlaceInfo?> {
  final GoogleAutoCompleteCubit googleAutoCompleteCubit;

  PlacesSearchList({required this.googleAutoCompleteCubit});

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        tooltip: 'Clear',
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        tooltip: 'Back',
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Suggestions'),
      ),
    );
  }

  @override
//TODO : You NEED TO SOLVE BLOC with FutureBuilder
  Widget buildSuggestions(BuildContext context) {
    String sessionToken = Uuid().v1();
    PlaceAutocompleteQuery placeAutocompleteQuery = PlaceAutocompleteQuery(
        query, 'address', 'country:eg', sessionToken, googleAPIkey);
    googleAutoCompleteCubit.getPlacesSuggestions(
        placeAutocompleteQuery: placeAutocompleteQuery);

    return BlocBuilder<GoogleAutoCompleteCubit, GoogleAutoCompleteState>(
      bloc: googleAutoCompleteCubit,
      builder: (BuildContext context, GoogleAutoCompleteState state) {
        late List<SelectedPlaceInfo> places;
        if (state is PlacesLoaded) {
          places = state.places;
        } else {
          return const Center(child: Text('Suggestion'));
        }
        return ListView.builder(
          itemBuilder: (context, index) {
            print("------------builder--------------");
            return ListTile(
                leading: const Icon(Icons.location_on),
                title: Text(places[index].description),
                onTap: () {
                  close(context, places[index]);
                });
          },
          itemCount: places.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
        );
      },
    );
  }
}
