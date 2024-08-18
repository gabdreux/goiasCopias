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
import 'dart:typed_data';

Future addBytesToCart() async {
  // Abre a caixa Hive para PDFs em cache
  var pdfBox = await Hive.openBox<Uint8List>('pdfscache');

  // Abre a caixa Hive para o carrinho de cache
  var cartBox = await Hive.openBox<Uint8List>('carrinhocache');

  // Recupera todas as chaves (nomes dos arquivos) armazenadas na caixa pdfscache
  List<String> pdfKeys = pdfBox.keys.cast<String>().toList();

  for (String key in pdfKeys) {
    // Recupera os bytes do PDF armazenado no pdfscache
    Uint8List? bytes = pdfBox.get(key);

    if (bytes != null) {
      // Adiciona os bytes do PDF à caixa carrinhocache
      // Se o arquivo já existir no carrinhocache, ele será sobrescrito
      await cartBox.put(key, bytes);
    }
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!