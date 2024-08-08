// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosStruct extends FFFirebaseStruct {
  ProdutosStruct({
    String? id,
    double? valor,
    String? nome,
    int? quantidade,
    DocumentReference? ref,
    String? foto,
    double? peso,
    double? altura,
    double? largura,
    double? espessura,
    bool? g75,
    bool? g90,
    bool? frenteVerso,
    String? orientacao,
    bool? dividido,
    bool? colorido,
    int? encadernacoes,
    int? impressoes,
    int? qntArquivos,
    List<String>? pDFs,
    double? subTotal,
    double? pesoTotalProduto,
    double? alturaTotalProduto,
    double? larguraTotalProduto,
    double? espessuraTotalProduto,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _valor = valor,
        _nome = nome,
        _quantidade = quantidade,
        _ref = ref,
        _foto = foto,
        _peso = peso,
        _altura = altura,
        _largura = largura,
        _espessura = espessura,
        _g75 = g75,
        _g90 = g90,
        _frenteVerso = frenteVerso,
        _orientacao = orientacao,
        _dividido = dividido,
        _colorido = colorido,
        _encadernacoes = encadernacoes,
        _impressoes = impressoes,
        _qntArquivos = qntArquivos,
        _pDFs = pDFs,
        _subTotal = subTotal,
        _pesoTotalProduto = pesoTotalProduto,
        _alturaTotalProduto = alturaTotalProduto,
        _larguraTotalProduto = larguraTotalProduto,
        _espessuraTotalProduto = espessuraTotalProduto,
        super(firestoreUtilData);

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "Ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  set ref(DocumentReference? val) => _ref = val;

  bool hasRef() => _ref != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "Peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  set peso(double? val) => _peso = val;

  void incrementPeso(double amount) => peso = peso + amount;

  bool hasPeso() => _peso != null;

  // "Altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  set altura(double? val) => _altura = val;

  void incrementAltura(double amount) => altura = altura + amount;

  bool hasAltura() => _altura != null;

  // "Largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  set largura(double? val) => _largura = val;

  void incrementLargura(double amount) => largura = largura + amount;

  bool hasLargura() => _largura != null;

  // "Espessura" field.
  double? _espessura;
  double get espessura => _espessura ?? 0.0;
  set espessura(double? val) => _espessura = val;

  void incrementEspessura(double amount) => espessura = espessura + amount;

  bool hasEspessura() => _espessura != null;

  // "g75" field.
  bool? _g75;
  bool get g75 => _g75 ?? false;
  set g75(bool? val) => _g75 = val;

  bool hasG75() => _g75 != null;

  // "g90" field.
  bool? _g90;
  bool get g90 => _g90 ?? false;
  set g90(bool? val) => _g90 = val;

  bool hasG90() => _g90 != null;

  // "FrenteVerso" field.
  bool? _frenteVerso;
  bool get frenteVerso => _frenteVerso ?? false;
  set frenteVerso(bool? val) => _frenteVerso = val;

  bool hasFrenteVerso() => _frenteVerso != null;

  // "Orientacao" field.
  String? _orientacao;
  String get orientacao => _orientacao ?? '';
  set orientacao(String? val) => _orientacao = val;

  bool hasOrientacao() => _orientacao != null;

  // "Dividido" field.
  bool? _dividido;
  bool get dividido => _dividido ?? false;
  set dividido(bool? val) => _dividido = val;

  bool hasDividido() => _dividido != null;

  // "Colorido" field.
  bool? _colorido;
  bool get colorido => _colorido ?? false;
  set colorido(bool? val) => _colorido = val;

  bool hasColorido() => _colorido != null;

  // "Encadernacoes" field.
  int? _encadernacoes;
  int get encadernacoes => _encadernacoes ?? 0;
  set encadernacoes(int? val) => _encadernacoes = val;

  void incrementEncadernacoes(int amount) =>
      encadernacoes = encadernacoes + amount;

  bool hasEncadernacoes() => _encadernacoes != null;

  // "Impressoes" field.
  int? _impressoes;
  int get impressoes => _impressoes ?? 0;
  set impressoes(int? val) => _impressoes = val;

  void incrementImpressoes(int amount) => impressoes = impressoes + amount;

  bool hasImpressoes() => _impressoes != null;

  // "Qnt_Arquivos" field.
  int? _qntArquivos;
  int get qntArquivos => _qntArquivos ?? 0;
  set qntArquivos(int? val) => _qntArquivos = val;

  void incrementQntArquivos(int amount) => qntArquivos = qntArquivos + amount;

  bool hasQntArquivos() => _qntArquivos != null;

  // "PDFs" field.
  List<String>? _pDFs;
  List<String> get pDFs => _pDFs ?? const [];
  set pDFs(List<String>? val) => _pDFs = val;

  void updatePDFs(Function(List<String>) updateFn) {
    updateFn(_pDFs ??= []);
  }

  bool hasPDFs() => _pDFs != null;

  // "Sub_Total" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;

  void incrementSubTotal(double amount) => subTotal = subTotal + amount;

  bool hasSubTotal() => _subTotal != null;

  // "peso_total_produto" field.
  double? _pesoTotalProduto;
  double get pesoTotalProduto => _pesoTotalProduto ?? 0.0;
  set pesoTotalProduto(double? val) => _pesoTotalProduto = val;

  void incrementPesoTotalProduto(double amount) =>
      pesoTotalProduto = pesoTotalProduto + amount;

  bool hasPesoTotalProduto() => _pesoTotalProduto != null;

  // "altura_total_produto" field.
  double? _alturaTotalProduto;
  double get alturaTotalProduto => _alturaTotalProduto ?? 0.0;
  set alturaTotalProduto(double? val) => _alturaTotalProduto = val;

  void incrementAlturaTotalProduto(double amount) =>
      alturaTotalProduto = alturaTotalProduto + amount;

  bool hasAlturaTotalProduto() => _alturaTotalProduto != null;

  // "largura_total_produto" field.
  double? _larguraTotalProduto;
  double get larguraTotalProduto => _larguraTotalProduto ?? 0.0;
  set larguraTotalProduto(double? val) => _larguraTotalProduto = val;

  void incrementLarguraTotalProduto(double amount) =>
      larguraTotalProduto = larguraTotalProduto + amount;

  bool hasLarguraTotalProduto() => _larguraTotalProduto != null;

  // "espessura_total_produto" field.
  double? _espessuraTotalProduto;
  double get espessuraTotalProduto => _espessuraTotalProduto ?? 0.0;
  set espessuraTotalProduto(double? val) => _espessuraTotalProduto = val;

  void incrementEspessuraTotalProduto(double amount) =>
      espessuraTotalProduto = espessuraTotalProduto + amount;

  bool hasEspessuraTotalProduto() => _espessuraTotalProduto != null;

  static ProdutosStruct fromMap(Map<String, dynamic> data) => ProdutosStruct(
        id: data['Id'] as String?,
        valor: castToType<double>(data['Valor']),
        nome: data['Nome'] as String?,
        quantidade: castToType<int>(data['Quantidade']),
        ref: data['Ref'] as DocumentReference?,
        foto: data['Foto'] as String?,
        peso: castToType<double>(data['Peso']),
        altura: castToType<double>(data['Altura']),
        largura: castToType<double>(data['Largura']),
        espessura: castToType<double>(data['Espessura']),
        g75: data['g75'] as bool?,
        g90: data['g90'] as bool?,
        frenteVerso: data['FrenteVerso'] as bool?,
        orientacao: data['Orientacao'] as String?,
        dividido: data['Dividido'] as bool?,
        colorido: data['Colorido'] as bool?,
        encadernacoes: castToType<int>(data['Encadernacoes']),
        impressoes: castToType<int>(data['Impressoes']),
        qntArquivos: castToType<int>(data['Qnt_Arquivos']),
        pDFs: getDataList(data['PDFs']),
        subTotal: castToType<double>(data['Sub_Total']),
        pesoTotalProduto: castToType<double>(data['peso_total_produto']),
        alturaTotalProduto: castToType<double>(data['altura_total_produto']),
        larguraTotalProduto: castToType<double>(data['largura_total_produto']),
        espessuraTotalProduto:
            castToType<double>(data['espessura_total_produto']),
      );

  static ProdutosStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProdutosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'Valor': _valor,
        'Nome': _nome,
        'Quantidade': _quantidade,
        'Ref': _ref,
        'Foto': _foto,
        'Peso': _peso,
        'Altura': _altura,
        'Largura': _largura,
        'Espessura': _espessura,
        'g75': _g75,
        'g90': _g90,
        'FrenteVerso': _frenteVerso,
        'Orientacao': _orientacao,
        'Dividido': _dividido,
        'Colorido': _colorido,
        'Encadernacoes': _encadernacoes,
        'Impressoes': _impressoes,
        'Qnt_Arquivos': _qntArquivos,
        'PDFs': _pDFs,
        'Sub_Total': _subTotal,
        'peso_total_produto': _pesoTotalProduto,
        'altura_total_produto': _alturaTotalProduto,
        'largura_total_produto': _larguraTotalProduto,
        'espessura_total_produto': _espessuraTotalProduto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.String,
        ),
        'Valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'Ref': serializeParam(
          _ref,
          ParamType.DocumentReference,
        ),
        'Foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'Peso': serializeParam(
          _peso,
          ParamType.double,
        ),
        'Altura': serializeParam(
          _altura,
          ParamType.double,
        ),
        'Largura': serializeParam(
          _largura,
          ParamType.double,
        ),
        'Espessura': serializeParam(
          _espessura,
          ParamType.double,
        ),
        'g75': serializeParam(
          _g75,
          ParamType.bool,
        ),
        'g90': serializeParam(
          _g90,
          ParamType.bool,
        ),
        'FrenteVerso': serializeParam(
          _frenteVerso,
          ParamType.bool,
        ),
        'Orientacao': serializeParam(
          _orientacao,
          ParamType.String,
        ),
        'Dividido': serializeParam(
          _dividido,
          ParamType.bool,
        ),
        'Colorido': serializeParam(
          _colorido,
          ParamType.bool,
        ),
        'Encadernacoes': serializeParam(
          _encadernacoes,
          ParamType.int,
        ),
        'Impressoes': serializeParam(
          _impressoes,
          ParamType.int,
        ),
        'Qnt_Arquivos': serializeParam(
          _qntArquivos,
          ParamType.int,
        ),
        'PDFs': serializeParam(
          _pDFs,
          ParamType.String,
          isList: true,
        ),
        'Sub_Total': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'peso_total_produto': serializeParam(
          _pesoTotalProduto,
          ParamType.double,
        ),
        'altura_total_produto': serializeParam(
          _alturaTotalProduto,
          ParamType.double,
        ),
        'largura_total_produto': serializeParam(
          _larguraTotalProduto,
          ParamType.double,
        ),
        'espessura_total_produto': serializeParam(
          _espessuraTotalProduto,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProdutosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutosStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['Valor'],
          ParamType.double,
          false,
        ),
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['Quantidade'],
          ParamType.int,
          false,
        ),
        ref: deserializeParam(
          data['Ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Produtos'],
        ),
        foto: deserializeParam(
          data['Foto'],
          ParamType.String,
          false,
        ),
        peso: deserializeParam(
          data['Peso'],
          ParamType.double,
          false,
        ),
        altura: deserializeParam(
          data['Altura'],
          ParamType.double,
          false,
        ),
        largura: deserializeParam(
          data['Largura'],
          ParamType.double,
          false,
        ),
        espessura: deserializeParam(
          data['Espessura'],
          ParamType.double,
          false,
        ),
        g75: deserializeParam(
          data['g75'],
          ParamType.bool,
          false,
        ),
        g90: deserializeParam(
          data['g90'],
          ParamType.bool,
          false,
        ),
        frenteVerso: deserializeParam(
          data['FrenteVerso'],
          ParamType.bool,
          false,
        ),
        orientacao: deserializeParam(
          data['Orientacao'],
          ParamType.String,
          false,
        ),
        dividido: deserializeParam(
          data['Dividido'],
          ParamType.bool,
          false,
        ),
        colorido: deserializeParam(
          data['Colorido'],
          ParamType.bool,
          false,
        ),
        encadernacoes: deserializeParam(
          data['Encadernacoes'],
          ParamType.int,
          false,
        ),
        impressoes: deserializeParam(
          data['Impressoes'],
          ParamType.int,
          false,
        ),
        qntArquivos: deserializeParam(
          data['Qnt_Arquivos'],
          ParamType.int,
          false,
        ),
        pDFs: deserializeParam<String>(
          data['PDFs'],
          ParamType.String,
          true,
        ),
        subTotal: deserializeParam(
          data['Sub_Total'],
          ParamType.double,
          false,
        ),
        pesoTotalProduto: deserializeParam(
          data['peso_total_produto'],
          ParamType.double,
          false,
        ),
        alturaTotalProduto: deserializeParam(
          data['altura_total_produto'],
          ParamType.double,
          false,
        ),
        larguraTotalProduto: deserializeParam(
          data['largura_total_produto'],
          ParamType.double,
          false,
        ),
        espessuraTotalProduto: deserializeParam(
          data['espessura_total_produto'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProdutosStruct &&
        id == other.id &&
        valor == other.valor &&
        nome == other.nome &&
        quantidade == other.quantidade &&
        ref == other.ref &&
        foto == other.foto &&
        peso == other.peso &&
        altura == other.altura &&
        largura == other.largura &&
        espessura == other.espessura &&
        g75 == other.g75 &&
        g90 == other.g90 &&
        frenteVerso == other.frenteVerso &&
        orientacao == other.orientacao &&
        dividido == other.dividido &&
        colorido == other.colorido &&
        encadernacoes == other.encadernacoes &&
        impressoes == other.impressoes &&
        qntArquivos == other.qntArquivos &&
        listEquality.equals(pDFs, other.pDFs) &&
        subTotal == other.subTotal &&
        pesoTotalProduto == other.pesoTotalProduto &&
        alturaTotalProduto == other.alturaTotalProduto &&
        larguraTotalProduto == other.larguraTotalProduto &&
        espessuraTotalProduto == other.espessuraTotalProduto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        valor,
        nome,
        quantidade,
        ref,
        foto,
        peso,
        altura,
        largura,
        espessura,
        g75,
        g90,
        frenteVerso,
        orientacao,
        dividido,
        colorido,
        encadernacoes,
        impressoes,
        qntArquivos,
        pDFs,
        subTotal,
        pesoTotalProduto,
        alturaTotalProduto,
        larguraTotalProduto,
        espessuraTotalProduto
      ]);
}

ProdutosStruct createProdutosStruct({
  String? id,
  double? valor,
  String? nome,
  int? quantidade,
  DocumentReference? ref,
  String? foto,
  double? peso,
  double? altura,
  double? largura,
  double? espessura,
  bool? g75,
  bool? g90,
  bool? frenteVerso,
  String? orientacao,
  bool? dividido,
  bool? colorido,
  int? encadernacoes,
  int? impressoes,
  int? qntArquivos,
  double? subTotal,
  double? pesoTotalProduto,
  double? alturaTotalProduto,
  double? larguraTotalProduto,
  double? espessuraTotalProduto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosStruct(
      id: id,
      valor: valor,
      nome: nome,
      quantidade: quantidade,
      ref: ref,
      foto: foto,
      peso: peso,
      altura: altura,
      largura: largura,
      espessura: espessura,
      g75: g75,
      g90: g90,
      frenteVerso: frenteVerso,
      orientacao: orientacao,
      dividido: dividido,
      colorido: colorido,
      encadernacoes: encadernacoes,
      impressoes: impressoes,
      qntArquivos: qntArquivos,
      subTotal: subTotal,
      pesoTotalProduto: pesoTotalProduto,
      alturaTotalProduto: alturaTotalProduto,
      larguraTotalProduto: larguraTotalProduto,
      espessuraTotalProduto: espessuraTotalProduto,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosStruct? updateProdutosStruct(
  ProdutosStruct? produtos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosStructData(
  Map<String, dynamic> firestoreData,
  ProdutosStruct? produtos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtos == null) {
    return;
  }
  if (produtos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosData = getProdutosFirestoreData(produtos, forFieldValue);
  final nestedData = produtosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosFirestoreData(
  ProdutosStruct? produtos, [
  bool forFieldValue = false,
]) {
  if (produtos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtos.toMap());

  // Add any Firestore field values
  produtos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosListFirestoreData(
  List<ProdutosStruct>? produtoss,
) =>
    produtoss?.map((e) => getProdutosFirestoreData(e, true)).toList() ?? [];
