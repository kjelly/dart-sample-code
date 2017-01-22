import 'dart:async';

import 'package:angular2/core.dart';
import 'package:http/http.dart';

@Injectable()
class MyService {
  final Client _http;

  MyService(this._http);

  Future<Null> create() async {
    try {
        final response = await _http.get('url');
        print(response);
    } catch (e) {
    }
  }
}
