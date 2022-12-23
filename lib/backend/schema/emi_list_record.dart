import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'emi_list_record.g.dart';

abstract class EmiListRecord
    implements Built<EmiListRecord, EmiListRecordBuilder> {
  static Serializer<EmiListRecord> get serializer => _$emiListRecordSerializer;

  String? get date;

  String? get month;

  String? get year;

  String? get image;

  String? get remark;

  String? get txnAmount;

  String? get emiAmount;

  int? get index;

  bool? get isChecked;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmiListRecordBuilder builder) => builder
    ..date = ''
    ..month = ''
    ..year = ''
    ..image = ''
    ..remark = ''
    ..txnAmount = ''
    ..emiAmount = ''
    ..index = 0
    ..isChecked = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emiList');

  static Stream<EmiListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmiListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmiListRecord._();
  factory EmiListRecord([void Function(EmiListRecordBuilder) updates]) =
      _$EmiListRecord;

  static EmiListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmiListRecordData({
  String? date,
  String? month,
  String? year,
  String? image,
  String? remark,
  String? txnAmount,
  String? emiAmount,
  int? index,
  bool? isChecked,
}) {
  final firestoreData = serializers.toFirestore(
    EmiListRecord.serializer,
    EmiListRecord(
      (e) => e
        ..date = date
        ..month = month
        ..year = year
        ..image = image
        ..remark = remark
        ..txnAmount = txnAmount
        ..emiAmount = emiAmount
        ..index = index
        ..isChecked = isChecked,
    ),
  );

  return firestoreData;
}
