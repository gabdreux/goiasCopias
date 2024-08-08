// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<dynamic> cardToken(
    String cardNumber,
    String cardholderName,
    String cardExpirationMonth,
    String cardExpirationYear,
    String securityCode,
    String identificationType,
    String identificationNumber) async {
  final url =
      'https://api.mercadopago.com/v1/card_tokens?public_key=TEST-33b1b684-83d1-4f5f-9235-24e0645270f2';

  final headers = {
    'Authorization':
        'Bearer TEST-2812750792539524-012023-1673c430d7fafaf0fa2a9eafeed1cf4b-209864133',
    'Content-Type': 'application/json',
  };

  final body = jsonEncode({
    "card_number": cardNumber,
    "cardholder": cardholderName,
    "identification": {
      "type": identificationType,
      "number": identificationNumber,
    },
    "security_code": securityCode,
    "expiration_month": cardExpirationMonth,
    "expiration_year": cardExpirationYear,
  });

  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: body,
  );

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to create card token: ${response.body}');
  }
}
