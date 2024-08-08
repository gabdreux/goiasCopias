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

import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<void> fetchFile() async {
  var response = await http.get(Uri.parse('URL_DO_ARQUIVO'));

  if (response.statusCode == 200) {
    Uint8List fileBytes = response.bodyBytes;
    String? filename =
        response.headers['content-disposition']?.split('filename=')[1];

    print('Filename: $filename');
    print('File size: ${fileBytes.length} bytes');
  } else {
    print("Algo deu errado!");
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
