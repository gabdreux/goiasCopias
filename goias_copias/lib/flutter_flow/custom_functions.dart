import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? pathToString(List<String>? pathList) {
  // Verifica se a lista não é nula
  if (pathList == null) {
    return null;
  }

  // Converte a lista para uma nova lista de strings
  List<String> stringList = pathList.map((path) => path.toString()).toList();

  // Retorna a nova lista de strings
  return stringList;
}

double stringToDouble(String valor) {
  String formattedInput = valor.replaceAll(',', '.');
  return double.parse(formattedInput);
}

double stringToDoubleSOMA(
  String valor,
  String? valor2,
) {
  double doubleValor1 = double.parse(valor.replaceAll(',', '.'));
  double doubleValor2 =
      valor2 != null ? double.parse(valor2.replaceAll(',', '.')) : 0.0;

  return doubleValor1 + doubleValor2;
}

double stringToDoubleSUBTRAI(
  String valor,
  String? valor2,
) {
  double doubleValor1 = double.parse(valor.replaceAll(',', '.'));
  double doubleValor2 =
      valor2 != null ? double.parse(valor2.replaceAll(',', '.')) : 0.0;

  return doubleValor1 - doubleValor2;
}

List<dynamic> filtrafrete(
  List<dynamic> listaFrete,
  String companyName,
) {
  List<String> empresasDesejadas = ["Correios", "Jadlog"];

  List<dynamic> filtrados = listaFrete
      .where((item) => empresasDesejadas.contains(item['company']['name']))
      .toList();

  return filtrados;
}
