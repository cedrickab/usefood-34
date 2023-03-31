import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DetailproductCall {
  static Future<ApiCallResponse> call({
    String? code = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'detailproduct',
      apiUrl: 'https://fr.openfoodfacts.org/api/v0/produit/${code}.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic marque(dynamic response) => getJsonField(
        response,
        r'''$['product']['brands_tags']''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$['product']['image_url']''',
      );
  static dynamic quantite(dynamic response) => getJsonField(
        response,
        r'''$['product']['quantity']''',
      );
  static dynamic nutriscore(dynamic response) => getJsonField(
        response,
        r'''$['product']['nutriscore_grade']''',
      );
  static dynamic composition(dynamic response) => getJsonField(
        response,
        r'''$['product']['nutriments']''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$['product']['generic_name']''',
      );
  static dynamic ingredients(dynamic response) => getJsonField(
        response,
        r'''$['product']['image_ingredients_url']''',
      );
  static dynamic nutritions(dynamic response) => getJsonField(
        response,
        r'''$['product']['image_nutrition_url']''',
      );
  static dynamic novagroup(dynamic response) => getJsonField(
        response,
        r'''$['product']['nova_group']''',
      );
  static dynamic ecoscore(dynamic response) => getJsonField(
        response,
        r'''$['product']['ecoscore_grade']''',
      );
}

class NewsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'news',
      apiUrl:
          'https://gnews.io/api/v4/search?q=\"Gaspillage alimentaire\" OR \"Déchets alimentaires\" OR \"Gaspillage de nourriture\" OR \"Consommation responsable\" OR \"Durabilité alimentaire\" OR \"Conservation des aliments\"&token=deff36dd4b28ba503fafd9066c382829&lang=fr',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic titre(dynamic response) => getJsonField(
        response,
        r'''$['articles'][0]['title']''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$['articles'][0]['description']''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$['articles'][0]['image']''',
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$['articles'][0]['url']''',
      );
  static dynamic titre2(dynamic response) => getJsonField(
        response,
        r'''$.articles..title''',
        true,
      );
  static dynamic descriptio2(dynamic response) => getJsonField(
        response,
        r'''$.articles..description''',
        true,
      );
  static dynamic image2(dynamic response) => getJsonField(
        response,
        r'''$.articles..image''',
        true,
      );
  static dynamic areviser(dynamic response) => getJsonField(
        response,
        r'''$.articles..url''',
        true,
      );
  static dynamic url2(dynamic response) => getJsonField(
        response,
        r'''$.articles[*].url''',
        true,
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.articles..publishedAt''',
        true,
      );
}

class RecetteCall {
  static Future<ApiCallResponse> call({
    String? ingredients = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'recette',
      apiUrl:
          'https://api.spoonacular.com/food/search?apiKey=4a9733244445427790c0ee45669570a6&query=${ingredients}&number=1',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic products(dynamic response) => getJsonField(
        response,
        r'''$.searchResults[?(@.name=="Products")].results[*]''',
        true,
      );
}

class QuickanswerCall {
  static Future<ApiCallResponse> call({
    String? question = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'quickanswer',
      apiUrl:
          'https://api.spoonacular.com/recipes/quickAnswer?q=${question}&apiKey=4a9733244445427790c0ee45669570a6',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FrengCall {
  static Future<ApiCallResponse> call({
    String? text = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'freng',
      apiUrl:
          'https://api-free.deepl.com/v2/translate?auth_key=81b04c67-ef71-4d9a-fe06-500e4e017310:fx&text=${text}&source_lang=FR&target_lang=EN',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EngfrCall {
  static Future<ApiCallResponse> call({
    String? text = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'engfr',
      apiUrl:
          'https://api-free.deepl.com/v2/translate?auth_key=81b04c67-ef71-4d9a-fe06-500e4e017310:fx&text=${text}&source_lang=EN&target_lang=FR',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

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
