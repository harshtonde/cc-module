import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start EMIs Group Code

class EMIsGroup {
  static String baseUrl = 'https://firebasestorage.googleapis.com/v0/b/';
  static Map<String, String> headers = {};
  static GetAllEMIsCall getAllEMIsCall = GetAllEMIsCall();
}

class GetAllEMIsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get all EMIs',
      apiUrl:
          '${EMIsGroup.baseUrl}testff-66a80.appspot.com/o/results.json?alt=media&token=c4923c9b-5a5f-4752-a0de-223cc83f002e',
      callType: ApiCallType.GET,
      headers: {
        ...EMIsGroup.headers,
      },
      params: {},
      returnBody: true,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
        true,
      );
}

/// End EMIs Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
