// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'dart:typed_data';
import 'package:hive/hive.dart';

Future<List<FFUploadedFile>> baseToByteArgumento(
    List<String>? pdfsCarrinhoStrings) async {
  if (pdfsCarrinhoStrings == null) {
    return []; // Retorna uma lista vazia se a entrada for nula
  }

  // Abre o box Hive para PDFs
  var box = await Hive.openBox<Uint8List>('PDFsCache');

  // Cria a lista de FFUploadedFile
  List<FFUploadedFile> uploadedFiles = [];

  for (String key in pdfsCarrinhoStrings) {
    // Recupera os bytes do PDF armazenado no Hive usando a chave
    Uint8List? bytes = box.get(key);

    if (bytes != null) {
      // Cria o FFUploadedFile a partir dos bytes
      FFUploadedFile uploadedFile = FFUploadedFile(
        bytes: bytes,
        name:
            key, // Usa o nome original do arquivo como o nome do FFUploadedFile
      );

      // Adiciona o FFUploadedFile à lista
      uploadedFiles.add(uploadedFile);
    }
  }

  // Fecha o box (opcional, pode ser feito em outra parte do código)
  await box.close();

  return uploadedFiles;
}
