// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'context.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Context _$ContextFromJson(Map<String, dynamic> json) {
  return Context(
    json['name'] as String,
    lifespanCount: json['lifespanCount'] as num ?? 0,
    parameters: json['parameters'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$ContextToJson(Context instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('lifespanCount', instance.lifespanCount);
  writeNotNull('parameters', instance.parameters);
  return val;
}
