import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosRecord extends FirestoreRecord {
  ProdutosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "Largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  bool hasLargura() => _largura != null;

  // "Altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Data_Criacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "Modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  bool hasModelo() => _modelo != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "Peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Espessura" field.
  double? _espessura;
  double get espessura => _espessura ?? 0.0;
  bool hasEspessura() => _espessura != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _nome = snapshotData['Nome'] as String?;
    _valor = castToType<double>(snapshotData['Valor']);
    _largura = castToType<double>(snapshotData['Largura']);
    _altura = castToType<double>(snapshotData['Altura']);
    _descricao = snapshotData['Descricao'] as String?;
    _dataCriacao = snapshotData['Data_Criacao'] as DateTime?;
    _modelo = snapshotData['Modelo'] as String?;
    _foto = snapshotData['Foto'] as String?;
    _peso = castToType<double>(snapshotData['Peso']);
    _status = snapshotData['Status'] as String?;
    _espessura = castToType<double>(snapshotData['Espessura']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Produtos');

  static Stream<ProdutosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosRecord.fromSnapshot(s));

  static Future<ProdutosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosRecord.fromSnapshot(s));

  static ProdutosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosRecordData({
  String? id,
  String? nome,
  double? valor,
  double? largura,
  double? altura,
  String? descricao,
  DateTime? dataCriacao,
  String? modelo,
  String? foto,
  double? peso,
  String? status,
  double? espessura,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Nome': nome,
      'Valor': valor,
      'Largura': largura,
      'Altura': altura,
      'Descricao': descricao,
      'Data_Criacao': dataCriacao,
      'Modelo': modelo,
      'Foto': foto,
      'Peso': peso,
      'Status': status,
      'Espessura': espessura,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosRecordDocumentEquality implements Equality<ProdutosRecord> {
  const ProdutosRecordDocumentEquality();

  @override
  bool equals(ProdutosRecord? e1, ProdutosRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nome == e2?.nome &&
        e1?.valor == e2?.valor &&
        e1?.largura == e2?.largura &&
        e1?.altura == e2?.altura &&
        e1?.descricao == e2?.descricao &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.modelo == e2?.modelo &&
        e1?.foto == e2?.foto &&
        e1?.peso == e2?.peso &&
        e1?.status == e2?.status &&
        e1?.espessura == e2?.espessura;
  }

  @override
  int hash(ProdutosRecord? e) => const ListEquality().hash([
        e?.id,
        e?.nome,
        e?.valor,
        e?.largura,
        e?.altura,
        e?.descricao,
        e?.dataCriacao,
        e?.modelo,
        e?.foto,
        e?.peso,
        e?.status,
        e?.espessura
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosRecord;
}
