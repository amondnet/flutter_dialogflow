class EventInput {
  final String name;
  final Map<String, dynamic> parameters;
  String languageCode;

  EventInput(
    this.name, {
    this.parameters = const {},
    this.languageCode = 'ko',
  });
}
