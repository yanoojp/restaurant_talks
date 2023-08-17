// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_index_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemIndexState {
  List<Item> get items => throw _privateConstructorUsedError;
  String get selectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemIndexStateCopyWith<ItemIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemIndexStateCopyWith<$Res> {
  factory $ItemIndexStateCopyWith(
          ItemIndexState value, $Res Function(ItemIndexState) then) =
      _$ItemIndexStateCopyWithImpl<$Res, ItemIndexState>;
  @useResult
  $Res call({List<Item> items, String selectedCategory});
}

/// @nodoc
class _$ItemIndexStateCopyWithImpl<$Res, $Val extends ItemIndexState>
    implements $ItemIndexStateCopyWith<$Res> {
  _$ItemIndexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? selectedCategory = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemIndexStateCopyWith<$Res>
    implements $ItemIndexStateCopyWith<$Res> {
  factory _$$_ItemIndexStateCopyWith(
          _$_ItemIndexState value, $Res Function(_$_ItemIndexState) then) =
      __$$_ItemIndexStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items, String selectedCategory});
}

/// @nodoc
class __$$_ItemIndexStateCopyWithImpl<$Res>
    extends _$ItemIndexStateCopyWithImpl<$Res, _$_ItemIndexState>
    implements _$$_ItemIndexStateCopyWith<$Res> {
  __$$_ItemIndexStateCopyWithImpl(
      _$_ItemIndexState _value, $Res Function(_$_ItemIndexState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? selectedCategory = null,
  }) {
    return _then(_$_ItemIndexState(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ItemIndexState implements _ItemIndexState {
  const _$_ItemIndexState(
      {required final List<Item> items, required this.selectedCategory})
      : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String selectedCategory;

  @override
  String toString() {
    return 'ItemIndexState(items: $items, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemIndexState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), selectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemIndexStateCopyWith<_$_ItemIndexState> get copyWith =>
      __$$_ItemIndexStateCopyWithImpl<_$_ItemIndexState>(this, _$identity);
}

abstract class _ItemIndexState implements ItemIndexState {
  const factory _ItemIndexState(
      {required final List<Item> items,
      required final String selectedCategory}) = _$_ItemIndexState;

  @override
  List<Item> get items;
  @override
  String get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$_ItemIndexStateCopyWith<_$_ItemIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}
