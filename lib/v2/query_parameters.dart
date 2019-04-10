import 'package:flutter_dialogflow/v2/context.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_parameters.g.dart';

@JsonSerializable()
class QueryParameters {
  final String timeZone;

  final List<Context> contexts;
  final bool resetContexts;
  QueryParameters({
    this.timeZone,
    this.contexts,
    this.resetContexts,
  });

  Map<String, dynamic> toJson() => _$QueryParametersToJson(this);

  factory QueryParameters.fromJson(Map<String, dynamic> json) =>
      _$QueryParametersFromJson(json);
}
