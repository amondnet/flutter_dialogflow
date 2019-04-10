// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextQueryInput _$TextQueryInputFromJson(Map<String, dynamic> json) {
  return TextQueryInput(json['text'] == null
      ? null
      : TextInput.fromJson(json['text'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TextQueryInputToJson(TextQueryInput instance) =>
    <String, dynamic>{'text': instance.text?.toJson()};

TextInput _$TextInputFromJson(Map<String, dynamic> json) {
  return TextInput(json['text'] as String,
      languageCode: json['languageCode'] as String);
}

Map<String, dynamic> _$TextInputToJson(TextInput instance) => <String, dynamic>{
      'text': instance.text,
      'languageCode': instance.languageCode
    };

EventQueryInput _$EventQueryInputFromJson(Map<String, dynamic> json) {
  return EventQueryInput(json['event'] == null
      ? null
      : EventInput.fromJson(json['event'] as Map<String, dynamic>));
}

Map<String, dynamic> _$EventQueryInputToJson(EventQueryInput instance) =>
    <String, dynamic>{'event': instance.event?.toJson()};

EventInput _$EventInputFromJson(Map<String, dynamic> json) {
  return EventInput(json['name'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
      languageCode: json['languageCode'] as String);
}

Map<String, dynamic> _$EventInputToJson(EventInput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'parameters': instance.parameters,
      'languageCode': instance.languageCode
    };
