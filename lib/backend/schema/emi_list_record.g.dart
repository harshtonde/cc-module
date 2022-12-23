// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emi_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmiListRecord> _$emiListRecordSerializer =
    new _$EmiListRecordSerializer();

class _$EmiListRecordSerializer implements StructuredSerializer<EmiListRecord> {
  @override
  final Iterable<Type> types = const [EmiListRecord, _$EmiListRecord];
  @override
  final String wireName = 'EmiListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmiListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.remark;
    if (value != null) {
      result
        ..add('remark')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.txnAmount;
    if (value != null) {
      result
        ..add('txnAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emiAmount;
    if (value != null) {
      result
        ..add('emiAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isChecked;
    if (value != null) {
      result
        ..add('isChecked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EmiListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmiListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'remark':
          result.remark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'txnAmount':
          result.txnAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emiAmount':
          result.emiAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isChecked':
          result.isChecked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EmiListRecord extends EmiListRecord {
  @override
  final String? date;
  @override
  final String? month;
  @override
  final String? year;
  @override
  final String? image;
  @override
  final String? remark;
  @override
  final String? txnAmount;
  @override
  final String? emiAmount;
  @override
  final int? index;
  @override
  final bool? isChecked;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmiListRecord([void Function(EmiListRecordBuilder)? updates]) =>
      (new EmiListRecordBuilder()..update(updates))._build();

  _$EmiListRecord._(
      {this.date,
      this.month,
      this.year,
      this.image,
      this.remark,
      this.txnAmount,
      this.emiAmount,
      this.index,
      this.isChecked,
      this.ffRef})
      : super._();

  @override
  EmiListRecord rebuild(void Function(EmiListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmiListRecordBuilder toBuilder() => new EmiListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmiListRecord &&
        date == other.date &&
        month == other.month &&
        year == other.year &&
        image == other.image &&
        remark == other.remark &&
        txnAmount == other.txnAmount &&
        emiAmount == other.emiAmount &&
        index == other.index &&
        isChecked == other.isChecked &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, date.hashCode), month.hashCode),
                                    year.hashCode),
                                image.hashCode),
                            remark.hashCode),
                        txnAmount.hashCode),
                    emiAmount.hashCode),
                index.hashCode),
            isChecked.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmiListRecord')
          ..add('date', date)
          ..add('month', month)
          ..add('year', year)
          ..add('image', image)
          ..add('remark', remark)
          ..add('txnAmount', txnAmount)
          ..add('emiAmount', emiAmount)
          ..add('index', index)
          ..add('isChecked', isChecked)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmiListRecordBuilder
    implements Builder<EmiListRecord, EmiListRecordBuilder> {
  _$EmiListRecord? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _month;
  String? get month => _$this._month;
  set month(String? month) => _$this._month = month;

  String? _year;
  String? get year => _$this._year;
  set year(String? year) => _$this._year = year;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _remark;
  String? get remark => _$this._remark;
  set remark(String? remark) => _$this._remark = remark;

  String? _txnAmount;
  String? get txnAmount => _$this._txnAmount;
  set txnAmount(String? txnAmount) => _$this._txnAmount = txnAmount;

  String? _emiAmount;
  String? get emiAmount => _$this._emiAmount;
  set emiAmount(String? emiAmount) => _$this._emiAmount = emiAmount;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  bool? _isChecked;
  bool? get isChecked => _$this._isChecked;
  set isChecked(bool? isChecked) => _$this._isChecked = isChecked;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmiListRecordBuilder() {
    EmiListRecord._initializeBuilder(this);
  }

  EmiListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _month = $v.month;
      _year = $v.year;
      _image = $v.image;
      _remark = $v.remark;
      _txnAmount = $v.txnAmount;
      _emiAmount = $v.emiAmount;
      _index = $v.index;
      _isChecked = $v.isChecked;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmiListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmiListRecord;
  }

  @override
  void update(void Function(EmiListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmiListRecord build() => _build();

  _$EmiListRecord _build() {
    final _$result = _$v ??
        new _$EmiListRecord._(
            date: date,
            month: month,
            year: year,
            image: image,
            remark: remark,
            txnAmount: txnAmount,
            emiAmount: emiAmount,
            index: index,
            isChecked: isChecked,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
