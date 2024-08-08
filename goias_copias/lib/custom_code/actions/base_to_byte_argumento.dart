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
import 'dart:typed_data';

Future<List<FFUploadedFile>> baseToByteArgumento(
    List<String>? pdfsCarrinhoStrings) async {
  //String base64String = FFAppState().pdfString;

  // Separa a string Base64 por vírgula
  List<String> base64List = pdfsCarrinhoStrings!;

  FFAppState().pdfStringList = base64List;

  // Cria a lista de FFUploadedFile
  List<FFUploadedFile> uploadedFiles = [];

  for (String base64 in base64List) {
    // Decodifica a string Base64 para bytes
    Uint8List bytes = base64Decode(base64);

    // Cria o FFUploadedFile a partir dos bytes
    FFUploadedFile uploadedFile = FFUploadedFile(
      bytes: bytes,
      name:
          'filename_${base64List.indexOf(base64)}.pdf', // Nome dinâmico para cada arquivo
    );

    uploadedFiles.add(uploadedFile);
  }

  return uploadedFiles;
}
