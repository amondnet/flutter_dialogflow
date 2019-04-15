import 'dart:convert';
import 'dart:io';

import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:flutter_dialogflow/v2/context.dart';
import 'package:flutter_dialogflow/v2/query_parameters.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import 'package:test/test.dart';

void main() {
  test('ser', () {
    print(jsonEncode(TextQueryInput(TextInput('test')).toJson()));
  });
  test('운동입력', () async {
    AuthGoogle authGoogle = await AuthGoogleE().build();

    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.korean);

    Stopwatch stopwatch = Stopwatch();
    stopwatch.start();
    final response =
        await dialogflow.detectIntent(TextQueryInput(TextInput('나 운동했어')));
    stopwatch.stop();
    print(response.getMessage());

    print(response.queryResult.parameters);
    print(response.queryResult.action);

    print('time: ${stopwatch.elapsedMilliseconds}');
    stopwatch.reset();
    stopwatch.start();

    final response2 =
        await dialogflow.detectIntent(TextQueryInput(TextInput('나 운동했어')));
    stopwatch.stop();
    print(response2.getMessage());
    print(response2.queryResult.parameters);
    print(response2.queryResult.action);

    print('time: ${stopwatch.elapsedMilliseconds}');
    stopwatch.reset();
  });

  test('이벤트 테스트', () async {
    AuthGoogle authGoogle = await AuthGoogleE().build();

    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.korean);
    final response = await dialogflow.detectIntent(
        EventQueryInput(
            EventInput('WEIGHT_CURRENT', parameters: {'weight': 80})),
        params:
            QueryParameters(payload: {'weight': 80}, timeZone: 'Asia/Seoul'));
    print(response.responseId);

    print(response.getMessage());
    print(response.queryResult.queryText);
    print(response.queryResult.action);
  });
}

class AuthGoogleE extends AuthGoogle {
  //final List<String> scope;
  //final String sessionId;
  AuthGoogleE() : super(fileJson: '');

  String _projectId;
  AccessCredentials _credentials;

  Future<String> getReadJson() async {
    File file = await localFile;
    return file.readAsString();
  }

  Future<AuthGoogle> build() async {
    String readJson = await getReadJson();
    Map jsonData = json.decode(readJson);
    var _credentialsResponse = new ServiceAccountCredentials.fromJson(readJson);
    var data = await clientViaServiceAccount(_credentialsResponse, this.scope);
    _projectId = jsonData['project_id'];
    _credentials = data.credentials;
    return this;
  }

  bool get hasExpired {
    return _credentials.accessToken.hasExpired;
  }

  String get getSessionId {
    return sessionId;
  }

  String get getProjectId {
    return _projectId;
  }

  String get getToken {
    return _credentials.accessToken.data;
  }

  Future<Response> post(url,
      {Map<String, String> headers, body, Encoding encoding}) async {
    if (!hasExpired) {
      return await http.post(url, headers: headers, body: body);
    } else {
      await build();
      return await http.post(url, headers: headers, body: body);
    }
  }
}

Future<File> get localFile async {
  return File('test/key.json');
}
