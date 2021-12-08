import 'package:flutter/material.dart';
import 'package:graphql_users/const.dart';
import 'package:graphql_users/model/user_model.dart';
import 'package:graphql_users/views/ViewDetailScreen/viewDetailScreen.dart';

class UsersList extends StatelessWidget {
  final UserModel model;

  UsersList({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var models = model.users!.data!;
    return ListView.builder(
      itemCount: models.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewDetailScreen(index: index),
                ));
          },
          child: Container(
              margin: EdgeInsets.all(8),
              decoration: kCardDecoration,
              child: ListTile(
                title: Text(models[index].name.toString()),
                subtitle: Text(models[index].email.toString()),
                trailing: Text(models[index].website.toString()),
              )),
        );
      },
    );
  }
}
