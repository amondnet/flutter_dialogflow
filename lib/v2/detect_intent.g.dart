// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detect_intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetectIntentRequest _$DetectIntentRequestFromJson(Map<String, dynamic> json) {
  return DetectIntentRequest(
      json['queryInput'] == null
          ? null
          : _dataFromJson(json['queryInput'] as Map<String, dynamic>),
      queryParams: json['queryParams'] == null
          ? null
          : QueryParameters.fromJson(
              json['queryParams'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DetectIntentRequestToJson(
        DetectIntentRequest instance) =>
    <String, dynamic>{
      'queryInput':
          instance.queryInput == null ? null : _dataToJson(instance.queryInput),
      'queryParams': instance.queryParams?.toJson()
    };
