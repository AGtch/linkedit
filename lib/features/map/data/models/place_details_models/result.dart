import 'package:json_annotation/json_annotation.dart';

import 'geometry.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
  final Geometry? geometry;

  Result({this.geometry});

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
