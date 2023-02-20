import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:primer_mobile/ui/views/more/more_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:primer_mobile/ui/common/ui_helpers.dart';

class MoreView extends StackedView<InvestViewModel> {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InvestViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body:  SafeArea(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal:18.0),
         child: ListView(
                 children: [
                  const Text('More'),
                  const SizedBox(height: 30,),
                  const Text('Account'),
                  Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('My Profile'),
                      ),
                       ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Account Verification'),
                      ),
                       ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Upgrade Account'),
                      ),
                       ListTile(
                        leading: Icon(Icons.notifications),
                        title: Text('Notification'),
                      ),
                    ],
                    
                  ),
                  ),
                   const Text('Account'),
                  Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Change Password'),
                      ),
                       ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Change Transaction Pin'),
                      ),
                       ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Biometrics & 2FA'),
                      ),
                     
                    ],
                    
                  ),
                  ),
                   Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Cards'),
                      ),
                   
                     
                    ],
                    
                  ),
                  ),
                      Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('System Preferences'),
                        trailing: Icon(Icons.add)
                      ),
                   
                 ],
         ),
       )
     ] ),
    ))
    );
  }

  @override
  InvestViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InvestViewModel();
}
