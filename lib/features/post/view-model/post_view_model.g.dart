// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostViewModel on _PostViewModelBase, Store {
  final _$postListAtom = Atom(name: '_PostViewModelBase.postList');

  @override
  List<Post> get postList {
    _$postListAtom.reportRead();
    return super.postList;
  }

  @override
  set postList(List<Post> value) {
    _$postListAtom.reportWrite(value, super.postList, () {
      super.postList = value;
    });
  }

  final _$isServiceRequestFetchedAtom =
      Atom(name: '_PostViewModelBase.isServiceRequestFetched');

  @override
  bool get isServiceRequestFetched {
    _$isServiceRequestFetchedAtom.reportRead();
    return super.isServiceRequestFetched;
  }

  @override
  set isServiceRequestFetched(bool value) {
    _$isServiceRequestFetchedAtom
        .reportWrite(value, super.isServiceRequestFetched, () {
      super.isServiceRequestFetched = value;
    });
  }

  final _$getAllPostAsyncAction = AsyncAction('_PostViewModelBase.getAllPost');

  @override
  Future<void> getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase');

  @override
  void changeRequest() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
postList: ${postList},
isServiceRequestFetched: ${isServiceRequestFetched}
    ''';
  }
}
