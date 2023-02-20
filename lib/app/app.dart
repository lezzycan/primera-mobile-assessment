import 'package:primer_mobile/ui/views/dashboard/dashboard_view.dart';
import 'package:primer_mobile/ui/views/invest/more_view.dart';
import 'package:primer_mobile/ui/views/loans/loan_view.dart';
import 'package:primer_mobile/ui/views/more/more_view.dart';
import 'package:primer_mobile/ui/views/savings/savings_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:primer_mobile/ui/views/home/home_view.dart';
import 'package:primer_mobile/ui/views/startup/startup_view.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(routes: [
  MaterialRoute(page: StartupView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page:DashBoardView),
  
  MaterialRoute(page:InvestView),
  MaterialRoute(page:LoanView),
  MaterialRoute(page:SavingsView),
  MaterialRoute(page:MoreView)

  // @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: BottomSheetService),
  // @stacked-service
])
class App {}
