import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_users/GQLConfigs/GqlProvider.dart';
import 'package:graphql_users/ViewModel/HomeScreen_VM.dart';
import 'package:graphql_users/views/HomeScreen/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: GQlProvider.client,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeScreenVm(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: HomeScreen(),
        ),
      ),
    );
  }
}
