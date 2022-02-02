import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:mandob_moshtarayat/abstracts/states/state.dart';
import 'package:mandob_moshtarayat/generated/l10n.dart';
import 'package:mandob_moshtarayat/module_auth/service/auth_service/auth_service.dart';
import 'package:mandob_moshtarayat/module_orders/model/order_model.dart';
import 'package:mandob_moshtarayat/module_orders/service/orders_service.dart';
import 'package:mandob_moshtarayat/module_orders/ui/screen/my_orders_screen.dart';
import 'package:mandob_moshtarayat/module_orders/ui/state/my_orders/my_orders_empty_state.dart';
import 'package:mandob_moshtarayat/module_orders/ui/state/my_orders/my_orders_error_state.dart';
import 'package:mandob_moshtarayat/module_orders/ui/state/my_orders/my_orders_loaded_state.dart';
import 'package:mandob_moshtarayat/module_orders/ui/state/my_orders/my_orders_loading_state.dart';
import 'package:mandob_moshtarayat/module_orders/ui/state/my_orders/my_orders_state.dart';

@injectable
class MyOrdersStateManager {
  final OrdersService _myOrdersService;
  final AuthService _authService;
  final PublishSubject<States> _stateSubject = PublishSubject<States>();

  Stream<States> get stateStream => _stateSubject.stream;

  MyOrdersStateManager(this._myOrdersService, this._authService);

  StreamSubscription? newActionSubscription;

  void getOrders(OrdersScreenState screenState) {
    if (_authService.isLoggedIn) {
      _stateSubject.add(MyOrdersLoadingState(screenState));
      _myOrdersService.getPendingOrders().then((value) {
        if (value.hasError) {
          _stateSubject.add(MyOrdersErrorState(
              screenState, value.error ?? S.current.errorHappened, refresh: () {
            getOrders(screenState);
          }));
        } else if (value.isEmpty) {
          _stateSubject.add(MyOrdersEmptyState(
              screenState, S.current.homeDataEmpty, refresh: () {
            getOrders(screenState);
          }));
        } else {
          OrderModel model = value as OrderModel;
          _stateSubject.add(MyOrdersLoadedState(screenState, model.data));
        }
      });
    } else {
      screenState.goToLogin();
    }
  }
}
