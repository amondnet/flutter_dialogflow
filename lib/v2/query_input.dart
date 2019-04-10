import 'package:flutter_dialogflow/v2/event_input.dart';
import 'package:flutter_dialogflow/v2/text_input.dart';

abstract class QueryInput {}

class TextQueryInput extends QueryInput {
  final TextInput text;

  TextQueryInput(this.text);
}

class EventQueryInput extends QueryInput {
  final EventInput event;

  EventQueryInput(this.event);
}
