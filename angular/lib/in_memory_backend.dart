import 'dart:async';
import 'dart:convert';

import 'package:angular2/core.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';


@Injectable()
class InMemoryDataService extends MockClient {

  static Future<Response> _handler(Request request) async {
    var data = "nomethod";
    switch (request.method) {
      case 'GET':
        data = 'get';
        print('Get is called.');
        break;
      case 'POST':
        break;
      case 'PUT':
        break;
      case 'DELETE':
        break;
      default:
        throw 'Unimplemented HTTP method ${request.method}';
    }
    return new Response(JSON.encode({'data': data}), 200,
        headers: {'content-type': 'application/json'});
  }
  InMemoryDataService() : super(_handler);
}
