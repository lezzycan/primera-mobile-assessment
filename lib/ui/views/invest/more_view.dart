import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:primer_mobile/ui/views/more/more_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:primer_mobile/ui/common/ui_helpers.dart';

class InvestView extends StackedView<InvestViewModel> {
  const InvestView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InvestViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'STACKED',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Loading ...',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                horizontalSpaceSmall,
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                    strokeWidth: 6,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  InvestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InvestViewModel();
}
