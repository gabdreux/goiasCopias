import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "Sobrenome" field.
  String? _sobrenome;
  String get sobrenome => _sobrenome ?? '';
  bool hasSobrenome() => _sobrenome != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "Numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  // "Complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "Endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  bool hasEndereco() => _endereco != null;

  // "Bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "Cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "Pedidos" field.
  List<int>? _pedidos;
  List<int> get pedidos => _pedidos ?? const [];
  bool hasPedidos() => _pedidos != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _sobrenome = snapshotData['Sobrenome'] as String?;
    _cpf = snapshotData['CPF'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _numero = castToType<int>(snapshotData['Numero']);
    _complemento = snapshotData['Complemento'] as String?;
    _endereco = snapshotData['Endereco'] as String?;
    _bairro = snapshotData['Bairro'] as String?;
    _cidade = snapshotData['Cidade'] as String?;
    _estado = snapshotData['Estado'] as String?;
    _pedidos = getDataList(snapshotData['Pedidos']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayName,
  String? uid,
  String? photoUrl,
  String? sobrenome,
  String? cpf,
  String? cep,
  int? numero,
  String? complemento,
  String? endereco,
  String? bairro,
  String? cidade,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'display_name': displayName,
      'uid': uid,
      'photo_url': photoUrl,
      'Sobrenome': sobrenome,
      'CPF': cpf,
      'CEP': cep,
      'Numero': numero,
      'Complemento': complemento,
      'Endereco': endereco,
      'Bairro': bairro,
      'Cidade': cidade,
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.sobrenome == e2?.sobrenome &&
        e1?.cpf == e2?.cpf &&
        e1?.cep == e2?.cep &&
        e1?.numero == e2?.numero &&
        e1?.complemento == e2?.complemento &&
        e1?.endereco == e2?.endereco &&
        e1?.bairro == e2?.bairro &&
        e1?.cidade == e2?.cidade &&
        e1?.estado == e2?.estado &&
        listEquality.equals(e1?.pedidos, e2?.pedidos);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.phoneNumber,
        e?.displayName,
        e?.uid,
        e?.photoUrl,
        e?.sobrenome,
        e?.cpf,
        e?.cep,
        e?.numero,
        e?.complemento,
        e?.endereco,
        e?.bairro,
        e?.cidade,
        e?.estado,
        e?.pedidos
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
