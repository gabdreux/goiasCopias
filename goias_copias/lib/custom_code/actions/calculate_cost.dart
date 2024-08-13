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

Future<dynamic> calculateCost(List<FFUploadedFile> pdfs, bool isColored,
    bool isDoubleSided, bool is75g, bool isDivided, bool isBound) async {
  if (pdfs.isEmpty) {
    throw Exception("Nenhum PDF fornecido");
  }

  int totalLeafCount = 0;
  double weightPer500Sheets = is75g ? 2400.0 : 2810.0;
  double sheetThickness = is75g ? 0.1 : 0.12; // Thickness in mm

  List<Map<String, dynamic>> fileDetails = [];

  int totalBinders = 0;
  int numberOfBinders = 0;

  for (var pdf in pdfs) {
    if (pdf.bytes == null) {
      throw Exception("PDF inválido");
    }
    Uint8List pdfBytes = Uint8List.fromList(pdf.bytes!);
    final PdfDocument document = PdfDocument(inputBytes: pdfBytes);
    int leafCount = document.pages.count;
    totalLeafCount += leafCount;
    document.dispose();

    double weight = (weightPer500Sheets / 500) * leafCount;
    double thickness = (sheetThickness * leafCount); // Thickness in mm
    thickness +=
        isBound ? 5.0 : 0.0; // Add binding thickness in mm, convert to cm

    fileDetails.add({
      'leafCount': leafCount,
      'weight': weight,
      'thickness': thickness / 10.0, // Convert to cm
      'dimensions': {'width': 21.0, 'height': 29.7, 'depth': thickness / 10.0}
    });

    if (isBound) {
      if (isDivided) {
        totalBinders += 1; // Each file counts as one binder if divided
      } else {
        numberOfBinders = (totalLeafCount / 300)
            .ceil(); // Total number of binders if not divided
      }
    }
  }

  double printCostPerPage;
  if (isColored) {
    printCostPerPage =
        isDoubleSided ? (is75g ? 0.25 : 0.30) : (is75g ? 0.30 : 0.35);
  } else {
    printCostPerPage =
        isDoubleSided ? (is75g ? 0.15 : 0.25) : (is75g ? 0.19 : 0.30);
  }

  int totalPrints = totalLeafCount;
  double printingCost = totalPrints * printCostPerPage;

  double bindingCost = 0.0;
  if (isBound) {
    if (isDivided) {
      for (var fileDetail in fileDetails) {
        int leafCount = fileDetail['leafCount'];
        int pages = leafCount; // Páginas do PDF
        int sheets = isDoubleSided
            ? (pages / 2).ceil()
            : pages; // Calcula folhas considerando frente e verso

        if (sheets <= 130) {
          bindingCost += 5.00;
        } else if (sheets <= 210) {
          bindingCost += 7.00;
        } else {
          bindingCost += 10.00 * ((sheets / 300).ceil());
        }
      }
    } else {
      int totalPages = totalLeafCount; // Total de páginas impressas
      int totalSheets = isDoubleSided
          ? (totalPages / 2).ceil()
          : totalPages; // Calcula folhas considerando frente e verso

      if (totalSheets <= 130) {
        bindingCost = 5.00;
      } else if (totalSheets <= 210) {
        bindingCost = 7.00;
      } else {
        bindingCost = 10.00 * ((totalSheets / 300).ceil());
      }
    }
  }

  double totalCost = printingCost + bindingCost;
  if (totalCost < 20.00) {
    totalCost = 20.00;
  }

  double totalWeight =
      fileDetails.fold(0.0, (sum, file) => sum + file['weight']);
  double totalThickness =
      fileDetails.fold(0.0, (sum, file) => sum + file['thickness']);

  // Use totalThickness as the depth if files are bound together
  double depth =
      isDivided ? totalThickness : (totalThickness + (isBound ? 2.5 : 0.0));

  // Ensure minimum depth is at least 3 cm
  depth = depth < 3.0 ? 3.0 : depth;

  return {
    'Encad': isDivided ? totalBinders : numberOfBinders,
    'Folhas': totalLeafCount,
    'Impressoes': totalPrints,
    'Paginas': isDoubleSided ? (totalLeafCount / 2).ceil() : totalLeafCount,
    'Valor': totalCost,
    'Dimensoes': {'width': 21.0, 'depth': depth, 'height': 29.7},
    'Peso': totalWeight
  };
}
