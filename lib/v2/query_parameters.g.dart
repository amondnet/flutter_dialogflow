// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryParameters _$QueryParametersFromJson(Map<String, dynamic> json) {
  return QueryParameters(
    payload: json['payload'] as Map<String, dynamic>,
    timeZone: json['timeZone'] as String,
    contexts: (json['contexts'] as List)
        ?.map((e) =>
            e == null ? null : Context.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    resetContexts: json['resetContexts'] as bool,
  );
}

Map<String, dynamic> _$QueryParametersToJson(QueryParameters instance) =>
    <String, dynamic>{
      'timeZone': instance.timeZone,
      'payload': instance.payload,
      'contexts': instance.contexts,
      'resetContexts': instance.resetContexts,
    };
