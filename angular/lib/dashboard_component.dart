import 'package:angular2/core.dart';

@Component(
    selector: 'dashboard',
    template: '''
    <br/>
    {{ name }} Dashboard 
    '''
)
class DashboardComponent{
    @Input()
    String name="lhhhhhhhh";

}
