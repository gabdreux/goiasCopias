import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PDFsRecord extends FirestoreRecord {
  PDFsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Files" field.
  String? _files;
  String get files => _files ?? '';
  bool hasFiles() => _files != null;

  void _initializeFields() {
    _files = snapshotData['Files'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PDFs');

  static Stream<PDFsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PDFsRecord.fromSnapshot(s));

  static Future<PDFsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PDFsRecord.fromSnapshot(s));

  static PDFsRecord fromSnapshot(DocumentSnapshot snapshot) => PDFsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PDFsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PDFsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PDFsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PDFsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPDFsRecordData({
  String? files,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Files': files,
    }.withoutNulls,
  );

  return firestoreData;
}

class PDFsRecordDocumentEquality implements Equality<PDFsRecord> {
  const PDFsRecordDocumentEquality();

  @override
  bool equals(PDFsRecord? e1, PDFsRecord? e2) {
    return e1?.files == e2?.files;
  }

  @override
  int hash(PDFsRecord? e) => const ListEquality().hash([e?.files]);

  @override
  bool isValidKey(Object? o) => o is PDFsRecord;
}
