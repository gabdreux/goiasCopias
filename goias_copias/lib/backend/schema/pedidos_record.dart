import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidosRecord extends FirestoreRecord {
  PedidosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "Peso" field.
  double? _peso;
  double get peso => _peso ?? 0.0;
  bool hasPeso() => _peso != null;

  // "Valor_Frete" field.
  double? _valorFrete;
  double get valorFrete => _valorFrete ?? 0.0;
  bool hasValorFrete() => _valorFrete != null;

  // "Destinatrio" field.
  String? _destinatrio;
  String get destinatrio => _destinatrio ?? '';
  bool hasDestinatrio() => _destinatrio != null;

  // "Cliente" field.
  DocumentReference? _cliente;
  DocumentReference? get cliente => _cliente;
  bool hasCliente() => _cliente != null;

  // "Data_Criacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "Meio_Pagamento" field.
  String? _meioPagamento;
  String get meioPagamento => _meioPagamento ?? '';
  bool hasMeioPagamento() => _meioPagamento != null;

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "Produtos" field.
  List<DocumentReference>? _produtos;
  List<DocumentReference> get produtos => _produtos ?? const [];
  bool hasProdutos() => _produtos != null;

  // "Altura" field.
  double? _altura;
  double get altura => _altura ?? 0.0;
  bool hasAltura() => _altura != null;

  // "Largura" field.
  double? _largura;
  double get largura => _largura ?? 0.0;
  bool hasLargura() => _largura != null;

  // "Espessura" field.
  double? _espessura;
  double get espessura => _espessura ?? 0.0;
  bool hasEspessura() => _espessura != null;

  // "Status_Pedido" field.
  bool? _statusPedido;
  bool get statusPedido => _statusPedido ?? false;
  bool hasStatusPedido() => _statusPedido != null;

  void _initializeFields() {
    _total = castToType<double>(snapshotData['Total']);
    _peso = castToType<double>(snapshotData['Peso']);
    _valorFrete = castToType<double>(snapshotData['Valor_Frete']);
    _destinatrio = snapshotData['Destinatrio'] as String?;
    _cliente = snapshotData['Cliente'] as DocumentReference?;
    _dataCriacao = snapshotData['Data_Criacao'] as DateTime?;
    _meioPagamento = snapshotData['Meio_Pagamento'] as String?;
    _id = castToType<int>(snapshotData['Id']);
    _produtos = getDataList(snapshotData['Produtos']);
    _altura = castToType<double>(snapshotData['Altura']);
    _largura = castToType<double>(snapshotData['Largura']);
    _espessura = castToType<double>(snapshotData['Espessura']);
    _statusPedido = snapshotData['Status_Pedido'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pedidos');

  static Stream<PedidosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidosRecord.fromSnapshot(s));

  static Future<PedidosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidosRecord.fromSnapshot(s));

  static PedidosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidosRecordData({
  double? total,
  double? peso,
  double? valorFrete,
  String? destinatrio,
  DocumentReference? cliente,
  DateTime? dataCriacao,
  String? meioPagamento,
  int? id,
  double? altura,
  double? largura,
  double? espessura,
  bool? statusPedido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Total': total,
      'Peso': peso,
      'Valor_Frete': valorFrete,
      'Destinatrio': destinatrio,
      'Cliente': cliente,
      'Data_Criacao': dataCriacao,
      'Meio_Pagamento': meioPagamento,
      'Id': id,
      'Altura': altura,
      'Largura': largura,
      'Espessura': espessura,
      'Status_Pedido': statusPedido,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidosRecordDocumentEquality implements Equality<PedidosRecord> {
  const PedidosRecordDocumentEquality();

  @override
  bool equals(PedidosRecord? e1, PedidosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.total == e2?.total &&
        e1?.peso == e2?.peso &&
        e1?.valorFrete == e2?.valorFrete &&
        e1?.destinatrio == e2?.destinatrio &&
        e1?.cliente == e2?.cliente &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.meioPagamento == e2?.meioPagamento &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.produtos, e2?.produtos) &&
        e1?.altura == e2?.altura &&
        e1?.largura == e2?.largura &&
        e1?.espessura == e2?.espessura &&
        e1?.statusPedido == e2?.statusPedido;
  }

  @override
  int hash(PedidosRecord? e) => const ListEquality().hash([
        e?.total,
        e?.peso,
        e?.valorFrete,
        e?.destinatrio,
        e?.cliente,
        e?.dataCriacao,
        e?.meioPagamento,
        e?.id,
        e?.produtos,
        e?.altura,
        e?.largura,
        e?.espessura,
        e?.statusPedido
      ]);

  @override
  bool isValidKey(Object? o) => o is PedidosRecord;
}
