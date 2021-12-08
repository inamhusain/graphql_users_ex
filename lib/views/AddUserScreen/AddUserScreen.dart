// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graphql_users/const.dart';
import 'package:graphql_users/views/ViewDetailScreen/widgets/CustomButton.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_users/GQLConfigs/QueryMutation.dart';
import 'package:graphql_users/views/AddUserScreen/widgets/MyTextField.dart';
import 'package:graphql_users/model/user_model.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({Key? key}) : super(key: key);

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController addressStreetController = TextEditingController();
    TextEditingController addressSuiteController = TextEditingController();
    TextEditingController addressCityController = TextEditingController();
    TextEditingController addressZipCodeController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController websiteController = TextEditingController();
    TextEditingController companyNameController = TextEditingController();
    UserModel um = UserModel();
    dynamic name = "";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Add User"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            SizedBox(height: 20),
            Text("Personal"),
            SizedBox(height: 20),
            MyTextField(
              label: "Name",
              controller: nameController,
            ),
            SizedBox(height: 10),
            MyTextField(
              label: "Email",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            Text("Address"),
            SizedBox(height: 20),
            MyTextField(
              label: "Street",
              controller: addressStreetController,
            ),
            SizedBox(height: 10),
            MyTextField(
              label: "Suite",
              controller: addressSuiteController,
            ),
            SizedBox(height: 10),
            MyTextField(
              label: "City",
              controller: addressCityController,
            ),
            SizedBox(height: 10),
            MyTextField(
              label: "ZipCode",
              controller: addressZipCodeController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Text("Company"),
            SizedBox(height: 20),
            MyTextField(
              label: "Name",
              controller: companyNameController,
            ),
            SizedBox(height: 20),
            Mutation(
              options: MutationOptions(
                document: gql(QueryMutation().addUser),
                onCompleted: (data) async {
                  // String responseDetail =
                  //     await JsonEncoder.withIndent(' ').convert(data);
                  // // name = responseDetail;
                  // print(responseDetail);
                  // um = await UserModel.fromJson(json.decode(responseDetail));

                  // print(um.users!.data!.name);
                  name = await data['createUser']['name'];
                  print(name);

                  setState(() {});
                },
              ),
              builder: (runMutation, result) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        onTap: () {
                          runMutation({
                            "input": {
                              "name": nameController.text,
                              "email": emailController.text,
                              "username": "null",
                              "phone": phoneController.text,
                              "website": websiteController.text,
                              "address": {
                                "street": addressStreetController.text,
                                "suite": addressSuiteController.text,
                                "city": addressCityController.text,
                                "zipcode": addressZipCodeController.text
                              },
                              "company": {"name": companyNameController.text}
                            }
                          });
                        },
                        btnTitle: 'add user')
                  ],
                );
              },
            ),
            Container(
              color: Colors.blue,
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
                    "", //  name ?? "no data",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  // SizedBox(height: 50),
                  // Titles(
                  //   title: "Personal Data",
                  // ),
                  // SizedBox(height: 20),
                  // SubTitles(
                  //   title: "email",
                  //   subTitle: model['email'].toString(),
                  // ),
                  // SizedBox(height: 20),
                  // SubTitles(
                  //   title: "phone no",
                  //   subTitle: model['phone'].toString(),
                  // ),
                  // SizedBox(height: 20),
                  // SubTitles(
                  //   title: "website",
                  //   subTitle: model['website'].toString(),
                  // ),
                  // SizedBox(height: 20),
                  // SubTitles(
                  //   title: "address",
                  //   subTitle:
                  //       "${model["address"]['street']}, \n${model['address']['suite']}, \n${model['address']['city']},\n${model['address']['zipcode']}.",
                  // ),
                  // SizedBox(height: 20),
                  // Titles(title: "Company Data"),
                  // SizedBox(height: 20),
                  // SubTitles(
                  //     title: "company name",
                  //     subTitle: model['company']['name'].toString()),
                  // SizedBox(height: 20),
                  // CustomButton(
                  //   btnTitle: 'edit detail',
                  //   onTap: () {},
                  // )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
