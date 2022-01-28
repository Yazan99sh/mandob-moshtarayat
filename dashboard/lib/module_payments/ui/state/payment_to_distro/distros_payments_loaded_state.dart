import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart' as intl;
import 'package:mandob_moshtarayat_dashboad/abstracts/states/state.dart';
import 'package:mandob_moshtarayat_dashboad/generated/l10n.dart';
import 'package:mandob_moshtarayat_dashboad/module_distributor/model/balance_model.dart';
import 'package:mandob_moshtarayat_dashboad/module_distributor/model/profile_model.dart';
  import 'package:mandob_moshtarayat_dashboad/module_payments/request/captain_payments_request.dart';
import 'package:mandob_moshtarayat_dashboad/module_payments/request/distro_payments_request.dart';
 import 'package:mandob_moshtarayat_dashboad/module_payments/ui/screen/payment_to_distro_screen.dart';
import 'package:mandob_moshtarayat_dashboad/module_payments/ui/widget/custom_list_tile.dart';
import 'package:mandob_moshtarayat_dashboad/utils/components/custom_alert_dialog.dart';
import 'package:mandob_moshtarayat_dashboad/utils/components/custom_feild.dart';
import 'package:mandob_moshtarayat_dashboad/utils/components/empty_screen.dart';
import 'package:mandob_moshtarayat_dashboad/utils/components/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:mandob_moshtarayat_dashboad/utils/components/fixed_container.dart';
import 'package:mandob_moshtarayat_dashboad/utils/effect/hidder.dart';

class PaymentsToDistrosLoadedState extends States {
  final PaymentsToDistroScreenState screenState;
  final String? error;
  final bool empty;
  final ProfileModel? model;
  final BalanceModel? balanceModel;

  PaymentsToDistrosLoadedState(this.screenState, this.model, this.balanceModel,
      {this.empty = false, this.error})
      : super(screenState) {
    if (error != null) {
      screenState.refresh();
    }
    accountBalance = balanceModel?.data;
  }

  final _amount = TextEditingController();
  final _note = TextEditingController();
  String? id;

  AccountBalance? accountBalance;

  @override
  Widget getUI(BuildContext context) {
    if (error != null) {
      return ErrorStateWidget(
        onRefresh: () {
          screenState.getPayments();
        },
        error: error,
      );
    } else if (empty) {
      return EmptyStateWidget(
          empty: S.current.emptyStaff,
          onRefresh: () {
            screenState.getPayments();
          });
    }
    return FixedContainer(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, bottom: 8, right: 12, top: 16.0),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  S.current.paymentAmount,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            CustomFormField(
              controller: _amount,
              hintText: S.current.paymentAmount,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, bottom: 8, right: 12, top: 16.0),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  S.current.note,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            CustomFormField(
              controller: _note,
              hintText: S.current.note,
              last: true,
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  screenState.pay(DistroPaymentsRequest(
                      representativeID: screenState.captainId,
                      note: _note.text,
                      amount: num.parse(_amount.text.trim())));
                },
                style: ElevatedButton.styleFrom(
                  onSurface: Theme.of(context).primaryColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      S.current.pay,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0, left: 32),
              child: Divider(
                thickness: 2.5,
                color: Theme.of(context).backgroundColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        backgroundColor: Theme.of(context).backgroundColor,
                        content: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomListTileCaptainsPayment(
                                  title: S.of(context).name,
                                  subTitle: model?.name ?? '',
                                  iconData: Icons.person),
                              CustomListTileCaptainsPayment(
                                  title: S.of(context).phone,
                                  subTitle: model?.phone ?? '',
                                  iconData: Icons.phone),
                              CustomListTileCaptainsPayment(
                                  title: S.of(context).bankName,
                                  subTitle: model?.bankName ?? '',
                                  iconData: Icons.monetization_on_rounded),
                              CustomListTileCaptainsPayment(
                                  title: S.of(context).bankAccountNumber,
                                  subTitle: model?.bankNumber ?? '',
                                  iconData: Icons.password_rounded),
                              CustomListTileCaptainsPayment(
                                  title: S.of(context).stcPayCode,
                                  subTitle: model?.stcPay ?? '',
                                  iconData: Icons.credit_card_rounded),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).backgroundColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      S.current.distroInfo,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0, left: 32),
              child: Divider(
                thickness: 2.5,
                color: Theme.of(context).backgroundColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  S.current.distroInfoBalance,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  CustomListTileCaptainsPayment(
                      title: S.of(context).totalPaymentToRepresentative,
                      subTitle: accountBalance?.sumPaymentToRepresentative.toStringAsFixed(1) ?? '',
                      iconData: Icons.money),
                  CustomListTileCaptainsPayment(
                      title: S.of(context).totalDuToRepresentative,
                      subTitle: accountBalance?.sumRepresentativeDue.toStringAsFixed(1) ?? '',
                      iconData: Icons.wallet_giftcard_rounded),
                  CustomListTileCaptainsPayment(
                      title: S.of(context).remainingAmountToDistro,
                      subTitle: accountBalance?.totalRemainingPaymentsToRepresentative.toStringAsFixed(1) ?? '',
                      iconData: FontAwesomeIcons.coins),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0, left: 32),
              child: Divider(
                thickness: 2.5,
                color: Theme.of(context).backgroundColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            getCaptainPaymentFrom(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    ));
  }

  Widget getCaptainPaymentFrom() {
    List<Widget> widgets = [];
    widgets.add(
      Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            S.current.lastPaymentsToDistro,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
    accountBalance?.paymentsToRepresentative.forEach((element) {
      widgets.add(Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(screenState.context).backgroundColor,
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onTap: element.note != null
                  ? () {
                      showDialog(
                          context: screenState.context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              title: Text(S.current.note),
                              content: Container(
                                child: Text(element.note ?? ''),
                              ),
                            );
                          });
                    }
                  : null,
              leading: Icon(Icons.credit_card_rounded),
              title: Text(S.current.paymentAmount),
              subtitle: Text(element.amount.toStringAsFixed(1)),
              trailing: SizedBox(
                width: 150,
                child: Row(
                  children: [
                    Text(intl.DateFormat('yyyy/M/dd')
                        .format(element.paymentDate)),
                    SizedBox(
                      width: 16,
                    ),
                    IconButton(
                        splashRadius: 15,
                        onPressed: () {
                          showDialog(
                              context: screenState.context,
                              builder: (context) {
                                return CustomAlertDialog(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      screenState
                                          .deletePay(element.id.toString());
                                    },
                                    content: S
                                        .current.areYouSureToDeleteThisPayment);
                              });
                        },
                        icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            )),
      ));
    });
    return Hider(
      active: accountBalance?.paymentsToRepresentative.isNotEmpty ?? false,
      child: Column(
        children: widgets,
      ),
    );
  }
}
