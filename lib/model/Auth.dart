import 'package:odoo_api/odoo_api.dart';
import 'package:odoo_api/odoo_api_connector.dart';
import 'package:odoo_api/odoo_user_response.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Auth {
  static String apiToken =
      "https://www.bus2school.vn/api/authentication/oauth2/token";
  static String apiUser = "https://www.bus2school.vn/api/user";
  static var token;
//  static var body = {
//    "grant_type": "password",
//    "username": "luanvm@ts24.vn",
//    "password": "123456",
//    "scope": "all",
//    "client_id": "XUanvRsb5NvRscvMfc6wNtgiHOF8F0",
//    "client_secret": "c665Xgd3mt3SLbPVLdVjRawJg4kzd5",
//  };



  static Future<dynamic> getPartner(dynamic uid){
    Map<String, String> headers = {
      "content-type": "application/x-www-form-urlencoded",
      "authorization" : "Bearer $token"
    };
    var body= new Map();
    body["fields"] = ['id'];
    body["domain"] = [
      ['user_ids', '=', uid.toString()]
    ];
    var params = convertSerialize(body);
    return http
        .get("https://www.bus2school.vn/api/search_read/res.partner?$params",
        headers: headers)
        .then((http.Response response) {
      if (response.statusCode == 200) {
        var list = json.decode(response.body);
        if (list is List) if (list.length > 0) return list[0]["id"];
        return null;
      } else
        return 0;
    }).catchError((error) {
      return 0;
    });
  }

  static String convertSerialize(Map<String, dynamic> obj) {
    var str = "";
    obj.forEach((key, value) {
      if (str != "") {
        str += "&";
      }
      if (value is List) {
        value.asMap().forEach((index, element) {
          if (element is String)
            element = "'$element'";
          else if (element is List) {
            element.asMap().forEach((indexChild, elementChild) {
              if (elementChild is String)
                elementChild = "'$elementChild'";
              else if (elementChild is bool) {
                switch (elementChild) {
                  case false:
                    elementChild = 'False';
                    break;
                  case true:
                    elementChild = 'True';
                    break;
                  default:
                }
              }
              element[indexChild] = elementChild;
            });
          }
          value[index] = element;
        });
      }
      str += key + "=" + Uri.encodeComponent(value.toString());
    });
    return str;
  }

  static Future<dynamic> checkLogin() async{

    Map<String, String> headers = {
      "content-type": "application/x-www-form-urlencoded",
      "authorization" : "Bearer $token"
    };

    return http
        .get(apiUser, headers: headers)
        .then((http.Response response) async {
      if (response.statusCode == 200) {
        var userInfo = json.decode(response.body);
        print(userInfo);
//        var partnerID = await getPartner(userInfo["uid"]);
//        userInfo["partnerID"] = partnerID;
        return userInfo;
      } else
        return null;
    }).catchError((error) {
      return null;
    });

  }


  static Future<dynamic> getToken(user, pass) async {
    var body = Map();
    body["grant_type"] = "password";
//    body["username"] = "luanvm@ts24.vn";
//    body["password"] = "123456";
    body["username"] = user;
    body["password"] = pass;
    body["scope"] = "all";
    body["client_id"] = "jwLXOqcQ14QD68jUrVlnfQiYXgAPyn";
    body["client_secret"] = "a2EEtXnVfjf1QPRy7CAzkdPpbiYP0m";

    print(user);
    print(pass);
    return http.post(apiToken, body: body).then((http.Response response) {
      switch (response.statusCode) {
        case 200:
          var result = jsonDecode(response.body);
          token =  result["access_token"];
          print(token);
          return true;
          break;
        case 401:
          print("not valid");
          return false;
          break;
        default:
          return false;
      }
    }).catchError((error) {
      print(error);
      print("erorr");
      return false;
    }).timeout(Duration(seconds: 10), onTimeout: () {
      print("Time out");
      return false;
    });
  }


  static Future getOdoo() async {
    var client = new OdooClient("https://www.bus2school.vn");
    // Synchronize way
    final version = await client.connect();
    print(version);
    client.getDatabases().then((List databases) {
      // deal with database list
      client.authenticate("bus2school", "B@S#2019", databases[0])
          //.authenticate("luanvm@ts24.vn", "123456", databases[0])
          .then((AuthenticateCallback auth) {
        if (auth.isSuccess) {
          final user = auth.getUser();
          print("Hello ${user.name}");

          final domain = [
            '|',
            ['id', '=', 48],
            ['parent_id', '=', 48]
          ];
          final fields = ["id", "name", "email"];
          client
              .searchRead("res.partner", domain, [],
                  limit: 10, offset: 0, order: "date")
              .then((OdooResponse result) {
            if (!result.hasError()) {
              final data = result.getResult();
              final records = data['records'];
              print(records);
            } else {
              print(result.getError().toString());
            }
          });
        } else {
          // login fail
        }
      });
    });
  }
}

