import 'package:json_annotation/json_annotation.dart';

part 'context.g.dart';

@JsonSerializable(includeIfNull: false)
class Context {
  final String name;
  @JsonKey(nullable: true, defaultValue: 0)
  final num lifespanCount;
  @JsonKey(nullable: true)
  final Map<String, dynamic> parameters;

  Context(this.name, {this.lifespanCount = 0, this.parameters = null});

  Map<String, dynamic> toJson() => _$ContextToJson(this);

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}
