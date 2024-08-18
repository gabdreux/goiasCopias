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

import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:html' as html;
import 'package:hive/hive.dart';

Future<void> saveOnCache(FFUploadedFile pdf) async {
  final byteData = pdf.bytes;

  var box = await Hive.openBox('pdfBox');

  await box.put('pdfKey', byteData);

  final int numberOfEntries = box.length;
  print('Retrieved Data: $numberOfEntries');
  // return box.get('pdfKey');
}
