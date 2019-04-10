// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Context _$ContextFromJson(Map<String, dynamic> json) {
  return Context(json['name'] as String,
      lifespanCount: json['lifespanCount'] as num,
      parameters: json['parameters'] as Map<String, dynamic>,
      resetContexts: json['resetContexts'] as bool);
}

Map<String, dynamic> _$ContextToJson(Context instance) => <String, dynamic>{
      'name': instance.name,
      'lifespanCount': instance.lifespanCount,
      'parameters': instance.parameters,
      'resetContexts': instance.resetContexts
    };
