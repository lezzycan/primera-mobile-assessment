// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:primer_mobile/ui/views/home/home_view.dart';
import 'package:primer_mobile/ui/views/invest/more_view.dart';
import 'package:primer_mobile/ui/views/loans/loan_view.dart';
import 'package:primer_mobile/ui/views/more/more_view.dart';
import 'package:primer_mobile/ui/views/savings/savings_view.dart';
import 'package:stacked/stacked.dart';
import 'package:primer_mobile/ui/common/app_colors.dart';
import 'package:primer_mobile/ui/common/ui_helpers.dart';

import 'dashboard_viewmodel.dart';

class DashBoardView extends StackedView<DashBoardViewModel> {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DashBoardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: Center(
      child: Container(color: Colors.red),
    ));
  }

  @override
  DashBoardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashBoardViewModel();
}
