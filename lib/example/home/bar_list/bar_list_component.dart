import 'package:framework/component.dart';

import 'bar_list_view_model.dart';

class BarListComponent extends Component<BarListViewModel> {

  @override
  BarListViewModel get initialViewModel => BarListViewModel(
      name: "bill"
  );
}
