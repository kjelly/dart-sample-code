import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2_template/app_component.dart';

import 'package:http/http.dart';
import 'package:http/browser_client.dart';
import 'package:angular2_template/in_memory_backend.dart';

void main() {
  bootstrap(AppComponent,[
//    provide(BrowserClient, useFactory: () => new BrowserClient(), deps: [])
     [provide(Client, useClass: InMemoryDataService)]
  ]);
}
