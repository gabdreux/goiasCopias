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
  Box<Uint8List>? pdfBox;
  Box<Uint8List>? cartBox;

  try {
    // Abre as caixas Hive para PDFs em cache e carrinho de cache
    pdfBox = await Hive.openBox<Uint8List>('pdfscache');
    cartBox = await Hive.openBox<Uint8List>('carrinhocache');

    // Recupera todas as chaves (nomes dos arquivos) e bytes armazenados na caixa pdfscache
    final pdfKeys = pdfBox.keys.cast<String>().toList();
    final Map<String, Uint8List> pdfMap = {};

    for (String key in pdfKeys) {
      final bytes = pdfBox.get(key);
      if (bytes != null) {
        pdfMap[key] = bytes;
      }
    }

    // Adiciona todos os bytes do PDF à caixa carrinhocache de uma vez
    await cartBox.putAll(pdfMap);
  } catch (e) {
    print('Erro ao adicionar bytes ao carrinho: $e');
  } finally {
    // Fechar as caixas após o uso
    try {
      if (pdfBox != null && Hive.isBoxOpen('pdfscache')) {
        await pdfBox.close();
      }
      if (cartBox != null && Hive.isBoxOpen('carrinhocache')) {
        await cartBox.close();
      }
    } catch (e) {
      print('Erro ao fechar as caixas: $e');
    }
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!