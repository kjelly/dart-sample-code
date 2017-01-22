import 'dart:async';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:http/http.dart';

import 'package:ng_bootstrap/ng_bootstrap.dart';

import "dashboard_component.dart";
import "detail_component.dart";
import "services.dart";


@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES, BS_DIRECTIVES, DashboardComponent],
    providers: const [ROUTER_PROVIDERS, MyService]
)
@RouteConfig(const [
  const Route(
      path: '/dashboard',
      name: 'Dashboard',
      component: DashboardComponent,
      useAsDefault: true),
  const Route(
      path: '/detail/:id', name: 'Detail', component: DetailComponent),
])
class AppComponent implements OnInit {
    MyService _service;
    var remoteData = '';

    AppComponent(this._service);

    String getSomething() {
        return "hi";
    }
    Future<Null> ngOnInit() async {
        _service.create();
    }
}
