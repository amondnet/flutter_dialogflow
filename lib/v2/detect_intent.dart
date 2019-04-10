import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:json_annotation/json_annotation.dart';

part 'detect_intent.g.dart';

@JsonSerializable(explicitToJson: true)
class DetectIntentRequest {
  @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson)
  final QueryInput queryInput;

  DetectIntentRequest(this.queryInput);

  factory DetectIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$DetectIntentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DetectIntentRequestToJson(this);
}

_dataFromJson(Map<String, dynamic> json) {}

_dataToJson(QueryInput queryInput) {
  return queryInput.toJson();
}
