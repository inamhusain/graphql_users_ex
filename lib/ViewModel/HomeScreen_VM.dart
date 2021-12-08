import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_users/GQLConfigs/GqlProvider.dart';
import 'package:graphql_users/GQLConfigs/QueryMutation.dart';
import 'package:graphql_users/model/user_model.dart';

class HomeScreenVm extends ChangeNotifier {
  final GQlProvider gQlProvider = GQlProvider();
  UserModel model = UserModel();
  void getUsers() async {
    GraphQLClient client = gQlProvider.clientToQuery();
    QueryResult result = await client.query(
      QueryOptions(
        document: gql(QueryMutation().getAllUsers),
      ),
    );
    String responseDetail = JsonEncoder.withIndent(' ').convert(result.data);
    model = await UserModel.fromJson(json.decode(responseDetail));
    // print(model.users!.data![0].name);
    notifyListeners();
  }
}
