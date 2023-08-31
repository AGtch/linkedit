// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceSuggestion _$PlaceSuggestionFromJson(Map<String, dynamic> json) =>
    PlaceSuggestion(
      predictions: (json['predictions'] as List<dynamic>)
          .map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
    );

Map<String, dynamic> _$PlaceSuggestionToJson(PlaceSuggestion instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
      'status': instance.status,
    };
