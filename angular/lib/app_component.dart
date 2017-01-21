import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import "dashboard_component.dart";
import "detail_component.dart";


@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES, DashboardComponent],
    providers: const [ROUTER_PROVIDERS]
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
class AppComponent {
    String getSomething() {
        return "hi";
    }
}
