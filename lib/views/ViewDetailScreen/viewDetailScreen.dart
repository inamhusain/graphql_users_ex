// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:graphql_users/ViewModel/HomeScreen_VM.dart';
import 'package:graphql_users/const.dart';
import 'package:graphql_users/views/ViewDetailScreen/widgets/CustomButton.dart';
import 'package:graphql_users/views/ViewDetailScreen/widgets/SubTitles.dart';
import 'package:graphql_users/views/ViewDetailScreen/widgets/Titles.dart';
import 'package:provider/provider.dart';

class ViewDetailScreen extends StatelessWidget {
  int index;
  ViewDetailScreen({
    Key? key,
    required this.index,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var model = Provider.of<HomeScreenVm>(context).model.users!.data![index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('User Detail'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(userSvg),
                ),
                SizedBox(height: 20),
                Text(
                  model.name.toString().toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[600], fontSize: 25, letterSpacing: 2),
                ),
                SizedBox(height: 50),
                Titles(
                  title: "Personal Data",
                ),
                SizedBox(height: 20),
                SubTitles(
                  title: "email",
                  subTitle: model.email.toString(),
                ),
                SizedBox(height: 20),
                SubTitles(
                  title: "phone no",
                  subTitle: model.phone.toString(),
                ),
                SizedBox(height: 20),
                SubTitles(
                  title: "website",
                  subTitle: model.website.toString(),
                ),
                SizedBox(height: 20),
                SubTitles(
                  title: "address",
                  subTitle:
                      "${model.address!.street}, \n${model.address!.suite}, \n${model.address!.city},\n${model.address!.zipcode}.",
                ),
                SizedBox(height: 20),
                Titles(title: "Company Data"),
                SizedBox(height: 20),
                SubTitles(
                    title: "company name",
                    subTitle: model.company!.name.toString()),
                SizedBox(height: 20),
                CustomButton(
                  btnTitle: 'edit detail',
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
