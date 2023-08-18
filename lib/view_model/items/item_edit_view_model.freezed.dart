// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_edit_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemEditState {
  Item get item => throw _privateConstructorUsedError;
  TextEditingController get nameController =>
      throw _privateConstructorUsedError;
  TextEditingController get stockCountController =>
      throw _privateConstructorUsedError;
  TextEditingController get categoryController =>
      throw _privateConstructorUsedError;
  TextEditingController get descriptionController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemEditStateCopyWith<ItemEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEditStateCopyWith<$Res> {
  factory $ItemEditStateCopyWith(
          ItemEditState value, $Res Function(ItemEditState) then) =
      _$ItemEditStateCopyWithImpl<$Res, ItemEditState>;
  @useResult
  $Res call(
      {Item item,
      TextEditingController nameController,
      TextEditingController stockCountController,
      TextEditingController categoryController,
      TextEditingController descriptionController});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemEditStateCopyWithImpl<$Res, $Val extends ItemEditState>
    implements $ItemEditStateCopyWith<$Res> {
  _$ItemEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? nameController = null,
    Object? stockCountController = null,
    Object? categoryController = null,
    Object? descriptionController = null,
  }) {
    return _then(_value.copyWith(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      stockCountController: null == stockCountController
          ? _value.stockCountController
          : stockCountController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      categoryController: null == categoryController
          ? _value.categoryController
          : categoryController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionController: null == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemEditStateCopyWith<$Res>
    implements $ItemEditStateCopyWith<$Res> {
  factory _$$_ItemEditStateCopyWith(
          _$_ItemEditState value, $Res Function(_$_ItemEditState) then) =
      __$$_ItemEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Item item,
      TextEditingController nameController,
      TextEditingController stockCountController,
      TextEditingController categoryController,
      TextEditingController descriptionController});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$_ItemEditStateCopyWithImpl<$Res>
    extends _$ItemEditStateCopyWithImpl<$Res, _$_ItemEditState>
    implements _$$_ItemEditStateCopyWith<$Res> {
  __$$_ItemEditStateCopyWithImpl(
      _$_ItemEditState _value, $Res Function(_$_ItemEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? nameController = null,
    Object? stockCountController = null,
    Object? categoryController = null,
    Object? descriptionController = null,
  }) {
    return _then(_$_ItemEditState(
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      nameController: null == nameController
          ? _value.nameController
          : nameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      stockCountController: null == stockCountController
          ? _value.stockCountController
          : stockCountController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      categoryController: null == categoryController
          ? _value.categoryController
          : categoryController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionController: null == descriptionController
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_ItemEditState implements _ItemEditState {
  const _$_ItemEditState(
      {required this.item,
      required this.nameController,
      required this.stockCountController,
      required this.categoryController,
      required this.descriptionController});

  @override
  final Item item;
  @override
  final TextEditingController nameController;
  @override
  final TextEditingController stockCountController;
  @override
  final TextEditingController categoryController;
  @override
  final TextEditingController descriptionController;

  @override
  String toString() {
    return 'ItemEditState(item: $item, nameController: $nameController, stockCountController: $stockCountController, categoryController: $categoryController, descriptionController: $descriptionController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemEditState &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.nameController, nameController) ||
                other.nameController == nameController) &&
            (identical(other.stockCountController, stockCountController) ||
                other.stockCountController == stockCountController) &&
            (identical(other.categoryController, categoryController) ||
                other.categoryController == categoryController) &&
            (identical(other.descriptionController, descriptionController) ||
                other.descriptionController == descriptionController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, nameController,
      stockCountController, categoryController, descriptionController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemEditStateCopyWith<_$_ItemEditState> get copyWith =>
      __$$_ItemEditStateCopyWithImpl<_$_ItemEditState>(this, _$identity);
}

abstract class _ItemEditState implements ItemEditState {
  const factory _ItemEditState(
          {required final Item item,
          required final TextEditingController nameController,
          required final TextEditingController stockCountController,
          required final TextEditingController categoryController,
          required final TextEditingController descriptionController}) =
      _$_ItemEditState;

  @override
  Item get item;
  @override
  TextEditingController get nameController;
  @override
  TextEditingController get stockCountController;
  @override
  TextEditingController get categoryController;
  @override
  TextEditingController get descriptionController;
  @override
  @JsonKey(ignore: true)
  _$$_ItemEditStateCopyWith<_$_ItemEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
