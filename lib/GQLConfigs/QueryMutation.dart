class QueryMutation {
  String getAllUsers = '''
  query GetAllUsers {
   users{
    data{
      name
      email
      address{
        street
        suite
        city
        zipcode
      }
      phone
      website
      company{
        name
        bs
      }
    }
  }
}
  ''';

  String addUser = '''
mutation createUser(\$input:CreateUserInput!){
  createUser(input:\$input){
    name
    email
    address{
      street
      suite
      city
      zipcode
    }
    phone
    website
    company{
      name
    }
  }
}
''';
}
