import 'package:LinkedIt/features/map/data/models/place_autocomplete_models/predictions_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_suggestion.g.dart';

@JsonSerializable()
class PlaceSuggestion {
  List<Prediction> predictions;
  String status;

  PlaceSuggestion({required this.predictions, required this.status});

  factory PlaceSuggestion.fromJson(Map<String, dynamic> json) =>
      _$PlaceSuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceSuggestionToJson(this);
}
