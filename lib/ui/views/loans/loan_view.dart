import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:primer_mobile/ui/views/more/more_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:primer_mobile/ui/common/ui_helpers.dart';

class LoanView extends StackedView<InvestViewModel> {
  const LoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InvestViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(child: Container(color: Colors.red)),
    );
  }

  @override
  InvestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InvestViewModel();
}
