class PlaceDetailsQuery {
  final String fields;
  final String apiPlaceAutocompleteKey;
  final String sessionToken;
  final String placeId;

  PlaceDetailsQuery(
      {required this.fields,
      required this.apiPlaceAutocompleteKey,
      required this.sessionToken,
      required this.placeId});
}
