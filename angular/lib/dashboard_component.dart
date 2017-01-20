import 'package:angular2/core.dart';

@Component(
    selector: 'dashboard',
    template: '''
        {{ name }} Dashboard
    '''
)
class DashboardComponent{
    @Input()
    String name="l";

}
