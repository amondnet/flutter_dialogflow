import 'package:json_annotation/json_annotation.dart';

part 'query_input.g.dart';

//@JsonSerializable()
class QueryInput {
  Map<String, dynamic> toJson() {
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class TextQueryInput extends QueryInput {
  final TextInput text;

  TextQueryInput(this.text);

  factory TextQueryInput.fromJson(Map<String, dynamic> json) =>
      _$TextQueryInputFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TextQueryInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TextInput {
  final String text;
  String languageCode;

  TextInput(this.text, {this.languageCode = 'ko'});

  factory TextInput.fromJson(Map<String, dynamic> json) =>
      _$TextInputFromJson(json);

  Map<String, dynamic> toJson() => _$TextInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventQueryInput extends QueryInput {
  final EventInput event;

  EventQueryInput(this.event);

  factory EventQueryInput.fromJson(Map<String, dynamic> json) =>
      _$EventQueryInputFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$EventQueryInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EventInput {
  final String name;
  final Map<String, dynamic> parameters;
  String languageCode;

  EventInput(
    this.name, {
    this.parameters = const {},
    this.languageCode = 'ko',
  });

  factory EventInput.fromJson(Map<String, dynamic> json) =>
      _$EventInputFromJson(json);

  Map<String, dynamic> toJson() => _$EventInputToJson(this);
}
