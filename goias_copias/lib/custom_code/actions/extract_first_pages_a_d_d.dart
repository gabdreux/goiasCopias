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

Future<List<FFUploadedFile>> extractFirstPagesADD(
    List<FFUploadedFile> pdfs) async {
  List<FFUploadedFile> extractedPages = [];

  for (final pdf in pdfs) {
    // Create a new Syncfusion PDF document from the PDF bytes
    PdfDocument document = PdfDocument(inputBytes: await pdf.bytes);

    // Extract the text from page 1
    String text = PdfTextExtractor(document).extractText(startPageIndex: 0);

    // Create a new PDF document with the extracted text
    PdfDocument extractedDocument = PdfDocument();
    extractedDocument.pages.add().graphics.drawString(
          text,
          PdfStandardFont(PdfFontFamily.helvetica, 12),
          bounds: Rect.fromLTWH(
              0,
              0,
              extractedDocument.pages[0].getClientSize().width,
              extractedDocument.pages[0].getClientSize().height),
        );
    Uint8List extractedBytes =
        Uint8List.fromList(await extractedDocument.save());

    // Create a new FFUploadedFile with the extracted PDF bytes
    FFUploadedFile extractedPdf = FFUploadedFile(
      name: pdf.name,
      bytes: extractedBytes,
    );

    extractedPages.add(extractedPdf);

    // Dispose the extracted document and the original document
    extractedDocument.dispose();
    document.dispose();
  }

  return extractedPages;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
