import 'package:flutter/material.dart';
import 'package:primer_mobile/ui/views/dashboard/dashboard_view.dart';
import 'package:primer_mobile/ui/views/invest/more_view.dart';
import 'package:primer_mobile/ui/views/more/more_view.dart';
import 'package:stacked/stacked.dart';

import '../savings/loan_view.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
   return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: viewModel.setIndex,
        currentIndex: viewModel.currentIndex,
        items: 
      [
        BottomNavigationBarItem(icon:
       Icon(Icons.home,
       color: viewModel.currentIndex  == 0 
       ? Colors.blue
       : Colors.grey,
       ),
       label: 'Home'
       ),
        BottomNavigationBarItem(icon:
       Icon(Icons.home,
        color: viewModel.currentIndex  == 1 
       ? Colors.blue
       : Colors.grey,
       ),
       label: 'Savings'
       ),
        BottomNavigationBarItem(icon:
       Icon(Icons.home,
        color: viewModel.currentIndex  == 2
       ? Colors.blue
       : Colors.grey,
       ),
       label: 'Investments'
       ),
        BottomNavigationBarItem(icon:
       Icon(Icons.home,
        color: viewModel.currentIndex  == 3
       ? Colors.blue
       : Colors.grey,
       ),
       label: 'Loans'
       ),
        BottomNavigationBarItem(icon:
       Icon(Icons.home,
        color: viewModel.currentIndex  == 4
       ? Colors.blue
       : Colors.grey,
       ),
       label: 'More'
       ),
       ]
       ),
       
      body:[
        DashBoardView(),
        SavingsView(),
        InvestView(),
        LoanView(),
        MoreView()

      ][viewModel.currentIndex]);
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class SavingsView {
}
