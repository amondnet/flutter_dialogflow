import 'package:json_annotation/json_annotation.dart';

part 'context.g.dart';

@JsonSerializable()
class Context {
  final String name;
  final num lifespanCount;
  final Map<String, dynamic> parameters;
  final bool resetContexts;

  Context(
    this.name, {
    this.lifespanCount = 2,
    this.parameters = null,
    this.resetContexts,
  });

  Map<String, dynamic> toJson() => _$ContextToJson(this);

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}
