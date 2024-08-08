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
import 'package:syncfusion_flutter_pdf/pdf.dart';

Future<List<FFUploadedFile>> extractFirstPages(
    List<FFUploadedFile> pdfs) async {
  List<FFUploadedFile> extractedPages = [];

  for (final pdf in pdfs) {
    // Create a new Syncfusion PDF document from the PDF bytes
    PdfDocument document = PdfDocument(inputBytes: await pdf.bytes);

    // Remove all pages except the first one
    while (document.pages.count > 1) {
      document.pages.removeAt(1);
    }

    // Save the document with only the first page
    Uint8List extractedBytes = Uint8List.fromList(await document.save());

    // Create a new FFUploadedFile with the extracted PDF bytes
    FFUploadedFile extractedPdf = FFUploadedFile(
      name: pdf.name,
      bytes: extractedBytes,
    );

    extractedPages.add(extractedPdf);
  }

  return extractedPages;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
