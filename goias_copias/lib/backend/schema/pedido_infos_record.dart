import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoInfosRecord extends FirestoreRecord {
  PedidoInfosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Produto" field.
  DocumentReference? _produto;
  DocumentReference? get produto => _produto;
  bool hasProduto() => _produto != null;

  // "Colorido" field.
  bool? _colorido;
  bool get colorido => _colorido ?? false;
  bool hasColorido() => _colorido != null;

  // "g75" field.
  bool? _g75;
  bool get g75 => _g75 ?? false;
  bool hasG75() => _g75 != null;

  // "g90" field.
  bool? _g90;
  bool get g90 => _g90 ?? false;
  bool hasG90() => _g90 != null;

  // "FrenteVerso" field.
  bool? _frenteVerso;
  bool get frenteVerso => _frenteVerso ?? false;
  bool hasFrenteVerso() => _frenteVerso != null;

  // "Orientacao" field.
  String? _orientacao;
  String get orientacao => _orientacao ?? '';
  bool hasOrientacao() => _orientacao != null;

  // "Dividido" field.
  bool? _dividido;
  bool get dividido => _dividido ?? false;
  bool hasDividido() => _dividido != null;

  // "Peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "Largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  bool hasLargura() => _largura != null;

  // "Altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "Espessura" field.
  double? _espessura;
  double get espessura => _espessura ?? 0.0;
  bool hasEspessura() => _espessura != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "Frete" field.
  double? _frete;
  double get frete => _frete ?? 0.0;
  bool hasFrete() => _frete != null;

  // "Encadernacoes" field.
  int? _encadernacoes;
  int get encadernacoes => _encadernacoes ?? 0;
  bool hasEncadernacoes() => _encadernacoes != null;

  // "Impressoes" field.
  int? _impressoes;
  int get impressoes => _impressoes ?? 0;
  bool hasImpressoes() => _impressoes != null;

  // "PDFs" field.
  List<String>? _pDFs;
  List<String> get pDFs => _pDFs ?? const [];
  bool hasPDFs() => _pDFs != null;

  // "Qnt_Arquivos" field.
  int? _qntArquivos;
  int get qntArquivos => _qntArquivos ?? 0;
  bool hasQntArquivos() => _qntArquivos != null;

  // "Quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  bool hasQuantidade() => _quantidade != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _produto = snapshotData['Produto'] as DocumentReference?;
    _colorido = snapshotData['Colorido'] as bool?;
    _g75 = snapshotData['g75'] as bool?;
    _g90 = snapshotData['g90'] as bool?;
    _frenteVerso = snapshotData['FrenteVerso'] as bool?;
    _orientacao = snapshotData['Orientacao'] as String?;
    _dividido = snapshotData['Dividido'] as bool?;
    _peso = castToType<double>(snapshotData['Peso']);
    _largura = castToType<double>(snapshotData['Largura']);
    _altura = castToType<double>(snapshotData['Altura']);
    _espessura = castToType<double>(snapshotData['Espessura']);
    _valor = castToType<double>(snapshotData['Valor']);
    _frete = castToType<double>(snapshotData['Frete']);
    _encadernacoes = castToType<int>(snapshotData['Encadernacoes']);
    _impressoes = castToType<int>(snapshotData['Impressoes']);
    _pDFs = getDataList(snapshotData['PDFs']);
    _qntArquivos = castToType<int>(snapshotData['Qnt_Arquivos']);
    _quantidade = castToType<int>(snapshotData['Quantidade']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Pedido_Infos')
          : FirebaseFirestore.instance.collectionGroup('Pedido_Infos');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Pedido_Infos').doc(id);

  static Stream<PedidoInfosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoInfosRecord.fromSnapshot(s));

  static Future<PedidoInfosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoInfosRecord.fromSnapshot(s));

  static PedidoInfosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidoInfosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoInfosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoInfosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoInfosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoInfosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoInfosRecordData({
  DocumentReference? produto,
  bool? colorido,
  bool? g75,
  bool? g90,
  bool? frenteVerso,
  String? orientacao,
  bool? dividido,
  double? peso,
  double? largura,
  double? altura,
  double? espessura,
  double? valor,
  double? frete,
  int? encadernacoes,
  int? impressoes,
  int? qntArquivos,
  int? quantidade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Produto': produto,
      'Colorido': colorido,
      'g75': g75,
      'g90': g90,
      'FrenteVerso': frenteVerso,
      'Orientacao': orientacao,
      'Dividido': dividido,
      'Peso': peso,
      'Largura': largura,
      'Altura': altura,
      'Espessura': espessura,
      'Valor': valor,
      'Frete': frete,
      'Encadernacoes': encadernacoes,
      'Impressoes': impressoes,
      'Qnt_Arquivos': qntArquivos,
      'Quantidade': quantidade,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoInfosRecordDocumentEquality implements Equality<PedidoInfosRecord> {
  const PedidoInfosRecordDocumentEquality();

  @override
  bool equals(PedidoInfosRecord? e1, PedidoInfosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.produto == e2?.produto &&
        e1?.colorido == e2?.colorido &&
        e1?.g75 == e2?.g75 &&
        e1?.g90 == e2?.g90 &&
        e1?.frenteVerso == e2?.frenteVerso &&
        e1?.orientacao == e2?.orientacao &&
        e1?.dividido == e2?.dividido &&
        e1?.peso == e2?.peso &&
        e1?.largura == e2?.largura &&
        e1?.altura == e2?.altura &&
        e1?.espessura == e2?.espessura &&
        e1?.valor == e2?.valor &&
        e1?.frete == e2?.frete &&
        e1?.encadernacoes == e2?.encadernacoes &&
        e1?.impressoes == e2?.impressoes &&
        listEquality.equals(e1?.pDFs, e2?.pDFs) &&
        e1?.qntArquivos == e2?.qntArquivos &&
        e1?.quantidade == e2?.quantidade;
  }

  @override
  int hash(PedidoInfosRecord? e) => const ListEquality().hash([
        e?.produto,
        e?.colorido,
        e?.g75,
        e?.g90,
        e?.frenteVerso,
        e?.orientacao,
        e?.dividido,
        e?.peso,
        e?.largura,
        e?.altura,
        e?.espessura,
        e?.valor,
        e?.frete,
        e?.encadernacoes,
        e?.impressoes,
        e?.pDFs,
        e?.qntArquivos,
        e?.quantidade
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidoInfosRecord;
}
