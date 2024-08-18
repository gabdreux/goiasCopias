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

Future<List<FFUploadedFile>> baseToByte() async {
  // Abre a caixa Hive para PDFs
  var box = await Hive.openBox<Uint8List>('PDFsCache');

  // Recupera todas as chaves (nomes dos arquivos) armazenadas na caixa
  List<String> keys = box.keys.cast<String>().toList();

  // Cria a lista de FFUploadedFile
  List<FFUploadedFile> uploadedFiles = [];

  for (String key in keys) {
    // Recupera os bytes do PDF armazenado no Hive
    Uint8List? bytes = box.get(key);

    if (bytes != null) {
      // Cria o FFUploadedFile a partir dos bytes
      FFUploadedFile uploadedFile = FFUploadedFile(
        bytes: bytes,
        name:
            key, // Usa o nome original do arquivo como o nome do FFUploadedFile
      );

      uploadedFiles.add(uploadedFile);
    }
  }

  return uploadedFiles;
}
