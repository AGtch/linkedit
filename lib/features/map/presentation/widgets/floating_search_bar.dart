import 'package:LinkedIt/features/map/presentation/widgets/places_search_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/helper/injection.dart';
import '../../../../utils/helper/text_form_controllers.dart';
import '../cubit/place_suggestions_cubit/place_suggestions_cubit.dart';
import '../cubit/selected_place_cubit/selected_place_cubit.dart';

class SearchActionBar extends StatelessWidget {
  const SearchActionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 15,
      left: 15,
      child: Container(
        color: Colors.white,
        child: BlocProvider(
          create: (context) => getIt.get<GoogleAutoCompleteCubit>(),
          child: TextField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.go,
            controller: searchTextController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                hintText: "Search..."),
            onTap: () async {
              dynamic result = await showSearch(
                  context: context,
                  delegate: PlacesSearchList(
                      googleAutoCompleteCubit:
                          getIt.get<GoogleAutoCompleteCubit>()));
              searchTextController.text = result.description.toString();
              addressTextController.text = searchTextController.text;

              BlocProvider.of<SelectedPlaceCubit>(context)
                  .updateSelectedPlace(result);
            },
          ),
        ),
      ),
    );
  }
}
