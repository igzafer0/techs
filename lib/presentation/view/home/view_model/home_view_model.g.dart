// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$blogEntityAtom =
      Atom(name: '_HomeViewModelBase.blogEntity', context: context);

  @override
  List<ItemEntity>? get blogEntity {
    _$blogEntityAtom.reportRead();
    return super.blogEntity;
  }

  @override
  set blogEntity(List<ItemEntity>? value) {
    _$blogEntityAtom.reportWrite(value, super.blogEntity, () {
      super.blogEntity = value;
    });
  }

  late final _$_getBlogAsyncAction =
      AsyncAction('_HomeViewModelBase._getBlog', context: context);

  @override
  Future _getBlog() {
    return _$_getBlogAsyncAction.run(() => super._getBlog());
  }

  @override
  String toString() {
    return '''
blogEntity: ${blogEntity}
    ''';
  }
}
