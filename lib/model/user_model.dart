/// users : {"data":[{"name":"Leanne Graham","email":"Sincere@april.biz","address":{"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874"},"phone":"1-770-736-8031 x56442","website":"hildegard.org","company":{"name":"Romaguera-Crona","bs":"harness real-time e-markets"}},{"name":"Ervin Howell","email":"Shanna@melissa.tv","address":{"street":"Victor Plains","suite":"Suite 879","city":"Wisokyburgh","zipcode":"90566-7771"},"phone":"010-692-6593 x09125","website":"anastasia.net","company":{"name":"Deckow-Crist","bs":"synergize scalable supply-chains"}},{"name":"Clementine Bauch","email":"Nathan@yesenia.net","address":{"street":"Douglas Extension","suite":"Suite 847","city":"McKenziehaven","zipcode":"59590-4157"},"phone":"1-463-123-4447","website":"ramiro.info","company":{"name":"Romaguera-Jacobson","bs":"e-enable strategic applications"}},{"name":"Patricia Lebsack","email":"Julianne.OConner@kory.org","address":{"street":"Hoeger Mall","suite":"Apt. 692","city":"South Elvis","zipcode":"53919-4257"},"phone":"493-170-9623 x156","website":"kale.biz","company":{"name":"Robel-Corkery","bs":"transition cutting-edge web services"}},{"name":"Chelsey Dietrich","email":"Lucio_Hettinger@annie.ca","address":{"street":"Skiles Walks","suite":"Suite 351","city":"Roscoeview","zipcode":"33263"},"phone":"(254)954-1289","website":"demarco.info","company":{"name":"Keebler LLC","bs":"revolutionize end-to-end systems"}},{"name":"Mrs. Dennis Schulist","email":"Karley_Dach@jasper.info","address":{"street":"Norberto Crossing","suite":"Apt. 950","city":"South Christy","zipcode":"23505-1337"},"phone":"1-477-935-8478 x6430","website":"ola.org","company":{"name":"Considine-Lockman","bs":"e-enable innovative applications"}},{"name":"Kurtis Weissnat","email":"Telly.Hoeger@billy.biz","address":{"street":"Rex Trail","suite":"Suite 280","city":"Howemouth","zipcode":"58804-1099"},"phone":"210.067.6132","website":"elvis.io","company":{"name":"Johns Group","bs":"generate enterprise e-tailers"}},{"name":"Nicholas Runolfsdottir V","email":"Sherwood@rosamond.me","address":{"street":"Ellsworth Summit","suite":"Suite 729","city":"Aliyaview","zipcode":"45169"},"phone":"586.493.6943 x140","website":"jacynthe.com","company":{"name":"Abernathy Group","bs":"e-enable extensible e-tailers"}},{"name":"Glenna Reichert","email":"Chaim_McDermott@dana.io","address":{"street":"Dayna Park","suite":"Suite 449","city":"Bartholomebury","zipcode":"76495-3109"},"phone":"(775)976-6794 x41206","website":"conrad.com","company":{"name":"Yost and Sons","bs":"aggregate real-time technologies"}},{"name":"Clementina DuBuque","email":"Rey.Padberg@karina.biz","address":{"street":"Kattie Turnpike","suite":"Suite 198","city":"Lebsackbury","zipcode":"31428-2261"},"phone":"024-648-3804","website":"ambrose.net","company":{"name":"Hoeger LLC","bs":"target end-to-end models"}}]}

class UserModel {
  UserModel({
      this.users,});

  UserModel.fromJson(dynamic json) {
    users = json['users'] != null ? Users.fromJson(json['users']) : null;
  }
  Users? users;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (users != null) {
      map['users'] = users?.toJson();
    }
    return map;
  }

}

/// data : [{"name":"Leanne Graham","email":"Sincere@april.biz","address":{"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874"},"phone":"1-770-736-8031 x56442","website":"hildegard.org","company":{"name":"Romaguera-Crona","bs":"harness real-time e-markets"}},{"name":"Ervin Howell","email":"Shanna@melissa.tv","address":{"street":"Victor Plains","suite":"Suite 879","city":"Wisokyburgh","zipcode":"90566-7771"},"phone":"010-692-6593 x09125","website":"anastasia.net","company":{"name":"Deckow-Crist","bs":"synergize scalable supply-chains"}},{"name":"Clementine Bauch","email":"Nathan@yesenia.net","address":{"street":"Douglas Extension","suite":"Suite 847","city":"McKenziehaven","zipcode":"59590-4157"},"phone":"1-463-123-4447","website":"ramiro.info","company":{"name":"Romaguera-Jacobson","bs":"e-enable strategic applications"}},{"name":"Patricia Lebsack","email":"Julianne.OConner@kory.org","address":{"street":"Hoeger Mall","suite":"Apt. 692","city":"South Elvis","zipcode":"53919-4257"},"phone":"493-170-9623 x156","website":"kale.biz","company":{"name":"Robel-Corkery","bs":"transition cutting-edge web services"}},{"name":"Chelsey Dietrich","email":"Lucio_Hettinger@annie.ca","address":{"street":"Skiles Walks","suite":"Suite 351","city":"Roscoeview","zipcode":"33263"},"phone":"(254)954-1289","website":"demarco.info","company":{"name":"Keebler LLC","bs":"revolutionize end-to-end systems"}},{"name":"Mrs. Dennis Schulist","email":"Karley_Dach@jasper.info","address":{"street":"Norberto Crossing","suite":"Apt. 950","city":"South Christy","zipcode":"23505-1337"},"phone":"1-477-935-8478 x6430","website":"ola.org","company":{"name":"Considine-Lockman","bs":"e-enable innovative applications"}},{"name":"Kurtis Weissnat","email":"Telly.Hoeger@billy.biz","address":{"street":"Rex Trail","suite":"Suite 280","city":"Howemouth","zipcode":"58804-1099"},"phone":"210.067.6132","website":"elvis.io","company":{"name":"Johns Group","bs":"generate enterprise e-tailers"}},{"name":"Nicholas Runolfsdottir V","email":"Sherwood@rosamond.me","address":{"street":"Ellsworth Summit","suite":"Suite 729","city":"Aliyaview","zipcode":"45169"},"phone":"586.493.6943 x140","website":"jacynthe.com","company":{"name":"Abernathy Group","bs":"e-enable extensible e-tailers"}},{"name":"Glenna Reichert","email":"Chaim_McDermott@dana.io","address":{"street":"Dayna Park","suite":"Suite 449","city":"Bartholomebury","zipcode":"76495-3109"},"phone":"(775)976-6794 x41206","website":"conrad.com","company":{"name":"Yost and Sons","bs":"aggregate real-time technologies"}},{"name":"Clementina DuBuque","email":"Rey.Padberg@karina.biz","address":{"street":"Kattie Turnpike","suite":"Suite 198","city":"Lebsackbury","zipcode":"31428-2261"},"phone":"024-648-3804","website":"ambrose.net","company":{"name":"Hoeger LLC","bs":"target end-to-end models"}}]

class Users {
  Users({
      this.data,});

  Users.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "Leanne Graham"
/// email : "Sincere@april.biz"
/// address : {"street":"Kulas Light","suite":"Apt. 556","city":"Gwenborough","zipcode":"92998-3874"}
/// phone : "1-770-736-8031 x56442"
/// website : "hildegard.org"
/// company : {"name":"Romaguera-Crona","bs":"harness real-time e-markets"}

class Data {
  Data({
      this.name, 
      this.email, 
      this.address, 
      this.phone, 
      this.website, 
      this.company,});

  Data.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    address = json['address'] != null ? Address.fromJson(json['address']) : null;
    phone = json['phone'];
    website = json['website'];
    company = json['company'] != null ? Company.fromJson(json['company']) : null;
  }
  String? name;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    if (address != null) {
      map['address'] = address?.toJson();
    }
    map['phone'] = phone;
    map['website'] = website;
    if (company != null) {
      map['company'] = company?.toJson();
    }
    return map;
  }

}

/// name : "Romaguera-Crona"
/// bs : "harness real-time e-markets"

class Company {
  Company({
      this.name, 
      this.bs,});

  Company.fromJson(dynamic json) {
    name = json['name'];
    bs = json['bs'];
  }
  String? name;
  String? bs;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['bs'] = bs;
    return map;
  }

}

/// street : "Kulas Light"
/// suite : "Apt. 556"
/// city : "Gwenborough"
/// zipcode : "92998-3874"

class Address {
  Address({
      this.street, 
      this.suite, 
      this.city, 
      this.zipcode,});

  Address.fromJson(dynamic json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
  }
  String? street;
  String? suite;
  String? city;
  String? zipcode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = street;
    map['suite'] = suite;
    map['city'] = city;
    map['zipcode'] = zipcode;
    return map;
  }

}