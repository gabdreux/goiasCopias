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

import 'package:hive/hive.dart';

Future<List<String>> returnPathsCache() async {
  // Abre a caixa Hive para PDFs
  var box = await Hive.openBox<Uint8List>('PDFsCache');

  // Recupera todas as chaves (nomes dos arquivos) armazenadas na caixa
  List<String> keys = box.keys.cast<String>().toList();

  // Fecha a caixa (opcional, pode ser feito em outra parte do código)
  await box.close();

  // Retorna a lista de chaves
  return keys;
}
