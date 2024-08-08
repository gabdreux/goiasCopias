// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarrinhoStruct extends FFFirebaseStruct {
  CarrinhoStruct({
    List<ProdutosStruct>? produtos,
    double? subTotalTotal,
    double? totalTotal,
    int? qntArquivosTotal,
    double? freteTotal,
    double? pesoTotal,
    double? alturaTotal,
    double? larguraTotal,
    double? espessuraTotal,
    String? transportadora,
    String? companhia,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _produtos = produtos,
        _subTotalTotal = subTotalTotal,
        _totalTotal = totalTotal,
        _qntArquivosTotal = qntArquivosTotal,
        _freteTotal = freteTotal,
        _pesoTotal = pesoTotal,
        _alturaTotal = alturaTotal,
        _larguraTotal = larguraTotal,
        _espessuraTotal = espessuraTotal,
        _transportadora = transportadora,
        _companhia = companhia,
        super(firestoreUtilData);

  // "Produtos" field.
  List<ProdutosStruct>? _produtos;
  List<ProdutosStruct> get produtos => _produtos ?? const [];
  set produtos(List<ProdutosStruct>? val) => _produtos = val;

  void updateProdutos(Function(List<ProdutosStruct>) updateFn) {
    updateFn(_produtos ??= []);
  }

  bool hasProdutos() => _produtos != null;

  // "SubTotal_Total" field.
  double? _subTotalTotal;
  double get subTotalTotal => _subTotalTotal ?? 0.00;
  set subTotalTotal(double? val) => _subTotalTotal = val;

  void incrementSubTotalTotal(double amount) =>
      subTotalTotal = subTotalTotal + amount;

  bool hasSubTotalTotal() => _subTotalTotal != null;

  // "Total_Total" field.
  double? _totalTotal;
  double get totalTotal => _totalTotal ?? 0.00;
  set totalTotal(double? val) => _totalTotal = val;

  void incrementTotalTotal(double amount) => totalTotal = totalTotal + amount;

  bool hasTotalTotal() => _totalTotal != null;

  // "Qnt_Arquivos_Total" field.
  int? _qntArquivosTotal;
  int get qntArquivosTotal => _qntArquivosTotal ?? 0;
  set qntArquivosTotal(int? val) => _qntArquivosTotal = val;

  void incrementQntArquivosTotal(int amount) =>
      qntArquivosTotal = qntArquivosTotal + amount;

  bool hasQntArquivosTotal() => _qntArquivosTotal != null;

  // "Frete_Total" field.
  double? _freteTotal;
  double get freteTotal => _freteTotal ?? 0.00;
  set freteTotal(double? val) => _freteTotal = val;

  void incrementFreteTotal(double amount) => freteTotal = freteTotal + amount;

  bool hasFreteTotal() => _freteTotal != null;

  // "Peso_Total" field.
  double? _pesoTotal;
  double get pesoTotal => _pesoTotal ?? 0.0;
  set pesoTotal(double? val) => _pesoTotal = val;

  void incrementPesoTotal(double amount) => pesoTotal = pesoTotal + amount;

  bool hasPesoTotal() => _pesoTotal != null;

  // "Altura_Total" field.
  double? _alturaTotal;
  double get alturaTotal => _alturaTotal ?? 0.0;
  set alturaTotal(double? val) => _alturaTotal = val;

  void incrementAlturaTotal(double amount) =>
      alturaTotal = alturaTotal + amount;

  bool hasAlturaTotal() => _alturaTotal != null;

  // "Largura_Total" field.
  double? _larguraTotal;
  double get larguraTotal => _larguraTotal ?? 0.0;
  set larguraTotal(double? val) => _larguraTotal = val;

  void incrementLarguraTotal(double amount) =>
      larguraTotal = larguraTotal + amount;

  bool hasLarguraTotal() => _larguraTotal != null;

  // "Espessura_Total" field.
  double? _espessuraTotal;
  double get espessuraTotal => _espessuraTotal ?? 0.0;
  set espessuraTotal(double? val) => _espessuraTotal = val;

  void incrementEspessuraTotal(double amount) =>
      espessuraTotal = espessuraTotal + amount;

  bool hasEspessuraTotal() => _espessuraTotal != null;

  // "Transportadora" field.
  String? _transportadora;
  String get transportadora => _transportadora ?? '';
  set transportadora(String? val) => _transportadora = val;

  bool hasTransportadora() => _transportadora != null;

  // "Companhia" field.
  String? _companhia;
  String get companhia => _companhia ?? '';
  set companhia(String? val) => _companhia = val;

  bool hasCompanhia() => _companhia != null;

  static CarrinhoStruct fromMap(Map<String, dynamic> data) => CarrinhoStruct(
        produtos: getStructList(
          data['Produtos'],
          ProdutosStruct.fromMap,
        ),
        subTotalTotal: castToType<double>(data['SubTotal_Total']),
        totalTotal: castToType<double>(data['Total_Total']),
        qntArquivosTotal: castToType<int>(data['Qnt_Arquivos_Total']),
        freteTotal: castToType<double>(data['Frete_Total']),
        pesoTotal: castToType<double>(data['Peso_Total']),
        alturaTotal: castToType<double>(data['Altura_Total']),
        larguraTotal: castToType<double>(data['Largura_Total']),
        espessuraTotal: castToType<double>(data['Espessura_Total']),
        transportadora: data['Transportadora'] as String?,
        companhia: data['Companhia'] as String?,
      );

  static CarrinhoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CarrinhoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Produtos': _produtos?.map((e) => e.toMap()).toList(),
        'SubTotal_Total': _subTotalTotal,
        'Total_Total': _totalTotal,
        'Qnt_Arquivos_Total': _qntArquivosTotal,
        'Frete_Total': _freteTotal,
        'Peso_Total': _pesoTotal,
        'Altura_Total': _alturaTotal,
        'Largura_Total': _larguraTotal,
        'Espessura_Total': _espessuraTotal,
        'Transportadora': _transportadora,
        'Companhia': _companhia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Produtos': serializeParam(
          _produtos,
          ParamType.DataStruct,
          isList: true,
        ),
        'SubTotal_Total': serializeParam(
          _subTotalTotal,
          ParamType.double,
        ),
        'Total_Total': serializeParam(
          _totalTotal,
          ParamType.double,
        ),
        'Qnt_Arquivos_Total': serializeParam(
          _qntArquivosTotal,
          ParamType.int,
        ),
        'Frete_Total': serializeParam(
          _freteTotal,
          ParamType.double,
        ),
        'Peso_Total': serializeParam(
          _pesoTotal,
          ParamType.double,
        ),
        'Altura_Total': serializeParam(
          _alturaTotal,
          ParamType.double,
        ),
        'Largura_Total': serializeParam(
          _larguraTotal,
          ParamType.double,
        ),
        'Espessura_Total': serializeParam(
          _espessuraTotal,
          ParamType.double,
        ),
        'Transportadora': serializeParam(
          _transportadora,
          ParamType.String,
        ),
        'Companhia': serializeParam(
          _companhia,
          ParamType.String,
        ),
      }.withoutNulls;

  static CarrinhoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarrinhoStruct(
        produtos: deserializeStructParam<ProdutosStruct>(
          data['Produtos'],
          ParamType.DataStruct,
          true,
          structBuilder: ProdutosStruct.fromSerializableMap,
        ),
        subTotalTotal: deserializeParam(
          data['SubTotal_Total'],
          ParamType.double,
          false,
        ),
        totalTotal: deserializeParam(
          data['Total_Total'],
          ParamType.double,
          false,
        ),
        qntArquivosTotal: deserializeParam(
          data['Qnt_Arquivos_Total'],
          ParamType.int,
          false,
        ),
        freteTotal: deserializeParam(
          data['Frete_Total'],
          ParamType.double,
          false,
        ),
        pesoTotal: deserializeParam(
          data['Peso_Total'],
          ParamType.double,
          false,
        ),
        alturaTotal: deserializeParam(
          data['Altura_Total'],
          ParamType.double,
          false,
        ),
        larguraTotal: deserializeParam(
          data['Largura_Total'],
          ParamType.double,
          false,
        ),
        espessuraTotal: deserializeParam(
          data['Espessura_Total'],
          ParamType.double,
          false,
        ),
        transportadora: deserializeParam(
          data['Transportadora'],
          ParamType.String,
          false,
        ),
        companhia: deserializeParam(
          data['Companhia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CarrinhoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CarrinhoStruct &&
        listEquality.equals(produtos, other.produtos) &&
        subTotalTotal == other.subTotalTotal &&
        totalTotal == other.totalTotal &&
        qntArquivosTotal == other.qntArquivosTotal &&
        freteTotal == other.freteTotal &&
        pesoTotal == other.pesoTotal &&
        alturaTotal == other.alturaTotal &&
        larguraTotal == other.larguraTotal &&
        espessuraTotal == other.espessuraTotal &&
        transportadora == other.transportadora &&
        companhia == other.companhia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        produtos,
        subTotalTotal,
        totalTotal,
        qntArquivosTotal,
        freteTotal,
        pesoTotal,
        alturaTotal,
        larguraTotal,
        espessuraTotal,
        transportadora,
        companhia
      ]);
}

CarrinhoStruct createCarrinhoStruct({
  double? subTotalTotal,
  double? totalTotal,
  int? qntArquivosTotal,
  double? freteTotal,
  double? pesoTotal,
  double? alturaTotal,
  double? larguraTotal,
  double? espessuraTotal,
  String? transportadora,
  String? companhia,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CarrinhoStruct(
      subTotalTotal: subTotalTotal,
      totalTotal: totalTotal,
      qntArquivosTotal: qntArquivosTotal,
      freteTotal: freteTotal,
      pesoTotal: pesoTotal,
      alturaTotal: alturaTotal,
      larguraTotal: larguraTotal,
      espessuraTotal: espessuraTotal,
      transportadora: transportadora,
      companhia: companhia,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CarrinhoStruct? updateCarrinhoStruct(
  CarrinhoStruct? carrinho, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    carrinho
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCarrinhoStructData(
  Map<String, dynamic> firestoreData,
  CarrinhoStruct? carrinho,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (carrinho == null) {
    return;
  }
  if (carrinho.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && carrinho.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final carrinhoData = getCarrinhoFirestoreData(carrinho, forFieldValue);
  final nestedData = carrinhoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = carrinho.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCarrinhoFirestoreData(
  CarrinhoStruct? carrinho, [
  bool forFieldValue = false,
]) {
  if (carrinho == null) {
    return {};
  }
  final firestoreData = mapToFirestore(carrinho.toMap());

  // Add any Firestore field values
  carrinho.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCarrinhoListFirestoreData(
  List<CarrinhoStruct>? carrinhos,
) =>
    carrinhos?.map((e) => getCarrinhoFirestoreData(e, true)).toList() ?? [];
