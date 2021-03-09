import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:mvvm_architecture/features/post/model/post.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {

  // @observable
  // int count = 0;

  // @computed
  // bool get isEven => count%2 == 0 ? true : false;

  // @action
  // void increment(){
  //   count++;
  // }
  @observable
  List<Post> postList = [];
  @observable
  bool isServiceRequestFetched = false;

  final url = "https://jsonplaceholder.typicode.com/posts";

  @action 
  void changeRequest(){
    isServiceRequestFetched = !isServiceRequestFetched;
  }

  @action
  Future<void> getAllPost()async {

    final response = await Dio().get(url);
    print("Requestt fireeee!");
    

    if(response.statusCode == HttpStatus.ok){
      changeRequest();
      final bodyItems = response.data as List;

      postList = bodyItems.map((post) => Post.fromMap(post)).toList();

      print(postList);
    }
  }  
}