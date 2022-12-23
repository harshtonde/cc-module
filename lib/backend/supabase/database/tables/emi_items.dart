import '../database.dart';

class EmiItemsTable extends SupabaseTable<EmiItemsRow> {
  @override
  String get tableName => 'emiItems';

  @override
  EmiItemsRow createRow(Map<String, dynamic> data) => EmiItemsRow(data);
}

class EmiItemsRow extends SupabaseDataRow {
  EmiItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmiItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  String? get month => getField<String>('month');
  set month(String? value) => setField<String>('month', value);

  String? get year => getField<String>('year');
  set year(String? value) => setField<String>('year', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get remark => getField<String>('remark');
  set remark(String? value) => setField<String>('remark', value);

  String? get txnAmount => getField<String>('txnAmount');
  set txnAmount(String? value) => setField<String>('txnAmount', value);

  String? get emiAmount => getField<String>('emiAmount');
  set emiAmount(String? value) => setField<String>('emiAmount', value);
}
