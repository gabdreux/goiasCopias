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
import 'dart:js_interop_unsafe';

Future<dynamic> returnList(FFUploadedFile pdf) async {
  if (pdf != null) {
    Uint8List pdfBytes = Uint8List.fromList(pdf.bytes!);
    return pdfBytes;
  } else {
    throw Exception('Nome do arquivo é nulo');
  }
}
