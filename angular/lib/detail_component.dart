import "dart:async";

import "package:angular2/core.dart";
import "package:angular2/router.dart";


@Component(
    selector: 'detail',
    template: '''
        <br/>
        {{ variable }}
    '''
)
class DetailComponent implements OnInit {
    final RouteParams _routeParams;

    var variable = "Detail";

    DetailComponent(this._routeParams);

    Future<Null> ngOnInit() async {
      var _id = _routeParams.get('id');
      print(_id);
    }
}
