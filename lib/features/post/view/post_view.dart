import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_architecture/features/post/view-model/post_view_model.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class PostView extends StatelessWidget {
  final _postViewModel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        bottomNavigationBar: NavigationBar(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.nature),
          mini:true,
          onPressed: () {
            _postViewModel.getAllPost();
          },
        ),
        body: Center(child: Observer(builder: (_) {
          return ListView.builder(
              itemCount: _postViewModel.postList.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text(_postViewModel.postList[index].title),
                    subtitle: Text(_postViewModel.postList[index].body),
                    trailing:
                        Text(_postViewModel.postList[index].userId.toString()),
                  ));
        })));
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text("Raife Selamm"),
        backgroundColor: Colors.white,
        leading: Observer(builder: (_) {
          return Visibility(
            visible: !_postViewModel.isServiceRequestFetched,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          );
        }));
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.map, title: 'Discovery'),
        TabItem(icon: Icons.add, title: 'Add'),
        TabItem(icon: Icons.message, title: 'Message'),
        TabItem(icon: Icons.people, title: 'Profile'),
      ],
      backgroundColor: Colors.red,
      initialActiveIndex: 2, //optional, default as 0
      onTap: (int i) => print('click index=$i'),
    );
  }
}
