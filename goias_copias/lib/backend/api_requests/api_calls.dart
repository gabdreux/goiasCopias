import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PixMercadoPagoCall {
  static Future<ApiCallResponse> call({
    double? transactionAmount,
    String? productTitle = 'Desc',
    String? email = '',
    String? fisrtName = '',
    String? lastName = '',
    String? identificationType = 'CPF',
    String? numberCpf = '',
    String? accessToken =
        'APP_USR-8811327718643098-072511-fc6b47bd26787d625ecb0388c3f2d1c1-1917874318',
    String? stringrandomica = 'adfpijaps-dnasipdnasio-pdnadfo',
    String? description = 'Descrição',
    String? paymentMethonId = 'pix',
  }) async {
    final ffApiRequestBody = '''
{
  "description": "Descrição Produto",
  "transaction_amount": ${transactionAmount},
  "payment_method_id": "${paymentMethonId}",
  "payer": {
    "email": "${email}",
    "first_name": "${fisrtName}",
    "last_name": "${lastName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${numberCpf}"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pix Mercado Pago',
      apiUrl: 'https://goias-copias-proxy.vercel.app/proxy-mercado-pago-pix',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Idempotency-Key': '${stringrandomica}',
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? qrCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.ticket_url''',
      ));
  static dynamic? metodo(dynamic response) => getJsonField(
        response,
        r'''$.payment_method''',
      );
  static dynamic? pagador(dynamic response) => getJsonField(
        response,
        r'''$.payer''',
      );
  static int? paymentId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? statusDetail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_detail''',
      ));
  static int? valor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.transaction_details.total_paid_amount''',
      ));
  static String? metodoId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_method_id''',
      ));
  static String? metodoIdd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_method.id''',
      ));
  static String? erroMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CardToTokenCall {
  static Future<ApiCallResponse> call({
    String? cardNumber = '',
    String? cardholderName = '',
    String? cardExpirationMonth = '',
    String? cardExpirationYear = '',
    String? securityCode = '',
    String? identificationType = 'CPF',
    String? identificationNumber = '',
    String? accessToken =
        'APP_USR-8811327718643098-072511-fc6b47bd26787d625ecb0388c3f2d1c1-1917874318',
    String? publicKey = 'APP_USR-b9290bb6-5606-443c-8622-73d0d9e23468',
  }) async {
    final ffApiRequestBody = '''
{
  "card_number": "${cardNumber}",
  "cardholder": {
    "name": "${cardholderName}",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    }
  },
  "security_code": "${securityCode}",
  "expiration_month": "${cardExpirationMonth}",
  "expiration_year": "${cardExpirationYear}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Card to Token',
      apiUrl:
          'https://goias-copias-proxy.vercel.app/proxy-card-to-token?public_key=${publicKey}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? statusDetails(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_detail''',
      ));
  static String? tokenID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class StatusPagamentoCall {
  static Future<ApiCallResponse> call({
    int? paymentId = 83342159047,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Pagamento',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${paymentId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer APP_USR-8811327718643098-072511-fc6b47bd26787d625ecb0388c3f2d1c1-1917874318',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? statusDetail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_detail''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

class CCMercadoPagoCall {
  static Future<ApiCallResponse> call({
    double? transactionAmount,
    String? token = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    int? streetNumber,
    String? neighborhood = '',
    String? city = '',
    String? federalUnit = '',
    String? description = '',
    String? accessToken =
        'APP_USR-8811327718643098-072511-fc6b47bd26787d625ecb0388c3f2d1c1-1917874318',
    int? installments = 1,
  }) async {
    final ffApiRequestBody = '''
{
 "transaction_amount": ${transactionAmount},
 "token": "${token}",
 "installments": ${installments},
 "payer": {
   "first_name": "${firstName}",
   "last_name": "${lastName}",
   "email": "${email}",
   "type": "customer",
   "identification": {
    "type": "${identificationType}",
    "number": "${identificationNumber}" 
   },
   "address": {
     "zip_code": "${zipCode}",
     "street_name": "${streetName}",
     "street_number": ${streetNumber},
     "neighborhood": "${neighborhood}",
     "city": "${city}",
     "federal_unit": "${federalUnit}"
   }
 },
 "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CC Mercado Pago',
      apiUrl: 'https://goias-copias-proxy.vercel.app/proxy-mercado-pago-cc',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
        'Content_Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? data(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.date_created''',
      ));
  static String? bandeira(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_method_id''',
      ));
  static String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.payment_type_id''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? statusDetail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.status_detail''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? erroMsg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? erroCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
  static int? idCC(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CalculadoraDeFreteCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZjkyY2JhMDliMmEyZmUwMzUyNzUyMTc5NTcyNzJhNTZmYzAwNzg3YmM3ZGY2NTViY2NhZDNkNDM4NzI1Njk0NmNmOWVkMWZlMzY0Y2EyNDQiLCJpYXQiOjE3MjE5MjQyNTEuOTU4OTk1LCJuYmYiOjE3MjE5MjQyNTEuOTU4OTk3LCJleHAiOjE3NTM0NjAyNTEuOTM4MjM1LCJzdWIiOiI5Yzk5Zjg1MC1mMWE5LTQ5YjctYmI2Mi03NTVhNzA2MGFjN2YiLCJzY29wZXMiOlsic2hpcHBpbmctY2FsY3VsYXRlIl19.3usHjHB44jJMZm-m_Uj_WFcdDAPWWTnmYwxTvKJjiQWwcN_L9c34cie1KX9OAMMfQYcgijYbEgY-RZqvN53HAi3yo3c2ascfseH_0SoQ2ZaQpcHu9uVYZglgy1d17FIJN-X2swjIC2iB4hM0TNBJfkJbxSt0PnfBzZAqKBv8wDFXk7-s2uZg-9ODrh390i6aynwMup0A3s_u55eC0QFd1FdFA67HoKe6Cw_YE_WvAmPsMEOgqc6yBhmqq3N4S8X85HrcrWInv5VPwWvpwkhcsULL3v7fz3PGvBnSwIrscNTX_ZlUtCDmZY3gUGGkuqkAwSAxO-iBDCFBcO4bemuX245RMGYmebRWP0Q3VywvEz7kULm2EC7SBnqHIOsOJYm_OLkBxgLPNoKJVd6EqZzaJ990mTe1T3N0xo1aBaGGxKQWWI6wJNVh_iSUFbK8KBlTuJk8PBJfs5nPaPXbNXrwoz7RD8lZxI5-MVuxyAOC5Qo9QPq4xbMswSnSNRCb50fxOY529XJ4TE3zt3nLwYbA2jhwAg026eoWjDDULu_p22dO1cfFWgvqKRlzOqtJHJpBBfw56j2kUmtAzZccA2U50lIohbY8cke5jbwdy-65FXXLgOXRP33eJZ94Gw8eBE8XiEM-Fmt2jpjhZ7b6Uqw4NZgmWw_CKmVROofCLGxOfr0',
    String? cep,
    double? altura,
    double? largura,
    double? comprimento,
    double? peso,
  }) async {
    // Define a URL do seu proxy local
    final apiUrl = 'https://goias-copias-proxy.vercel.app/proxy';

    // Define o corpo da requisição
    final ffApiRequestBody = '''
{
  "accessToken": "${accessToken}",
  "cep": "${cep}",
  "altura": ${altura},
  "largura": ${largura},
  "comprimento": ${comprimento},
  "peso": ${peso}
}''';

    return ApiManager.instance.makeApiCall(
      callName: 'Calculadora de Frete',
      apiUrl: apiUrl,
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nomeTipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? preco(dynamic response) => (getJsonField(
        response,
        r'''$[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? tempoMin(dynamic response) => (getJsonField(
        response,
        r'''$[:].delivery_range.min''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? tempoMax(dynamic response) => (getJsonField(
        response,
        r'''$[:].delivery_range.max''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? peso(dynamic response) => (getJsonField(
        response,
        r'''$[:].packages[:].weight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? transportadora(dynamic response) => (getJsonField(
        response,
        r'''$[:].company.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? foto(dynamic response) => (getJsonField(
        response,
        r'''$[:].company.picture''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dimensoes(dynamic response) => getJsonField(
        response,
        r'''$[:].packages[:].dimensions''',
        true,
      ) as List?;
  static List<String>? erro(dynamic response) => (getJsonField(
        response,
        r'''$[:].error''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
