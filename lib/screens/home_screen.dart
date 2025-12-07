import 'package:flutter/material.dart';
import 'package:flutter_apps/models/path_model.dart';
import '../widgets/custom_container.dart';
import '../widgets/navigation_bottom.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'home screen';
final List<PathOrginizationModel> listPathModels = const
    [
      PathOrginizationModel(title: 'اهلابك فى مؤسسة المسار',
          subTitle: 'للفئات الخاصة',
          colors: Colors.grey
      ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset( 'assets/6f794684-6e29-43c1-8c78-74c2e8fb6bb2.jfif',
           width: double.infinity,
            fit: BoxFit.cover,
            height: 300,
          ),
           Expanded(
             child: CustomContainer(
               pathOrginizationModel: listPathModels[0] ,
             ),
           )
        ],
      ),
      bottomNavigationBar: const NavigationBottom(),
    );
  }
}

