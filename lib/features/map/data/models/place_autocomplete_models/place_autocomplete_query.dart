class PlaceAutocompleteQuery {
  final String input;

  final String suggestionType;
  final String components;

  final String sessionToken;

  final String apiKey;

  PlaceAutocompleteQuery(this.input, this.suggestionType, this.components,
      this.sessionToken, this.apiKey);
}
