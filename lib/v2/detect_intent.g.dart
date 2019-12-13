// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detect_intent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetectIntentRequest _$DetectIntentRequestFromJson(Map<String, dynamic> json) {
  return DetectIntentRequest(
    _dataFromJson(json['queryInput'] as Map<String, dynamic>),
    queryParams: json['queryParams'] == null
        ? null
        : QueryParameters.fromJson(json['queryParams'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetectIntentRequestToJson(DetectIntentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('queryInput', _dataToJson(instance.queryInput));
  writeNotNull('queryParams', instance.queryParams?.toJson());
  return val;
}
