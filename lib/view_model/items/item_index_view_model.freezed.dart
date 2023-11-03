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
  Stream<List<Item>>? get itemStream => throw _privateConstructorUsedError;
  ItemCategory get selectedCategory => throw _privateConstructorUsedError;
  TextEditingController get searchController =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {Stream<List<Item>>? itemStream,
      ItemCategory selectedCategory,
      TextEditingController searchController});

  $ItemCategoryCopyWith<$Res> get selectedCategory;
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
    Object? itemStream = freezed,
    Object? selectedCategory = null,
    Object? searchController = null,
  }) {
    return _then(_value.copyWith(
      itemStream: freezed == itemStream
          ? _value.itemStream
          : itemStream // ignore: cast_nullable_to_non_nullable
              as Stream<List<Item>>?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ItemCategory,
      searchController: null == searchController
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCategoryCopyWith<$Res> get selectedCategory {
    return $ItemCategoryCopyWith<$Res>(_value.selectedCategory, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
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
  $Res call(
      {Stream<List<Item>>? itemStream,
      ItemCategory selectedCategory,
      TextEditingController searchController});

  @override
  $ItemCategoryCopyWith<$Res> get selectedCategory;
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
    Object? itemStream = freezed,
    Object? selectedCategory = null,
    Object? searchController = null,
  }) {
    return _then(_$_ItemIndexState(
      itemStream: freezed == itemStream
          ? _value.itemStream
          : itemStream // ignore: cast_nullable_to_non_nullable
              as Stream<List<Item>>?,
      selectedCategory: null == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as ItemCategory,
      searchController: null == searchController
          ? _value.searchController
          : searchController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_ItemIndexState implements _ItemIndexState {
  const _$_ItemIndexState(
      {this.itemStream,
      required this.selectedCategory,
      required this.searchController});

  @override
  final Stream<List<Item>>? itemStream;
  @override
  final ItemCategory selectedCategory;
  @override
  final TextEditingController searchController;

  @override
  String toString() {
    return 'ItemIndexState(itemStream: $itemStream, selectedCategory: $selectedCategory, searchController: $searchController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemIndexState &&
            (identical(other.itemStream, itemStream) ||
                other.itemStream == itemStream) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.searchController, searchController) ||
                other.searchController == searchController));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, itemStream, selectedCategory, searchController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemIndexStateCopyWith<_$_ItemIndexState> get copyWith =>
      __$$_ItemIndexStateCopyWithImpl<_$_ItemIndexState>(this, _$identity);
}

abstract class _ItemIndexState implements ItemIndexState {
  const factory _ItemIndexState(
          {final Stream<List<Item>>? itemStream,
          required final ItemCategory selectedCategory,
          required final TextEditingController searchController}) =
      _$_ItemIndexState;

  @override
  Stream<List<Item>>? get itemStream;
  @override
  ItemCategory get selectedCategory;
  @override
  TextEditingController get searchController;
  @override
  @JsonKey(ignore: true)
  _$$_ItemIndexStateCopyWith<_$_ItemIndexState> get copyWith =>
      throw _privateConstructorUsedError;
}
