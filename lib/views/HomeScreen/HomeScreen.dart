import 'package:flutter/material.dart';
import 'package:graphql_users/ViewModel/HomeScreen_VM.dart';
import 'package:graphql_users/const.dart';
import 'package:graphql_users/views/AddUserScreen/AddUserScreen.dart';
import 'package:graphql_users/views/HomeScreen/Widgets/usersList.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeScreenVm>(context, listen: false).getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text(
          "GQL users",
          style: TextStyle(color: kPrimaryTextColor),
        ),
      ),
      body: Consumer<HomeScreenVm>(
        builder: (context, value, child) {
          return value.model.users != null && value.model.users!.data != null
              ? UsersList(
                  model: value.model,
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddUserScreen(),
              ));
        },
      ),
    );
  }
}
