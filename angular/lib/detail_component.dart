import "dart:async";

import "package:angular2/core.dart";
import "package:angular2/router.dart";
import "package:angular2/platform/common.dart";


@Component(
    selector: 'detail',
    template: '''
        <br/>
        {{ variable }}
    '''
)
class DetailComponent implements OnInit {
    final RouteParams _routeParams;
    final Location _location;

    var variable = "Detail";

    DetailComponent(this._routeParams, this._location);

    Future<Null> ngOnInit() async {
      var _id = _routeParams.get('id');
      print(_id);
    }
}
