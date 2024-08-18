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

Future<void> clearPdfCache() async {
  try {
    // Abre o box Hive para PDFs
    var box = await Hive.openBox<Uint8List>('pdfscache');

    // Limpa todos os itens armazenados no box
    await box.clear();

    // Fecha o box (opcional, pode ser feito em outra parte do código)
    await box.close();

    print('Cache cleared successfully.');
  } catch (e) {
    print('Error clearing cache: $e');
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!