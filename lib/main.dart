import 'package:exoid/screens/auth/starting_point/view/starting_point_screen.dart';
import 'package:exoid/utils/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/initializing_dependency.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ExoidApp(),
  );
}

class ExoidApp extends StatelessWidget {
  const ExoidApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        initialBinding: InitializingDependency(),
        debugShowCheckedModeBanner: false,
        title: 'Exoid',
        theme: CustomThemeData.lightViewTheme,
        home: const StartingPointScreen(),
      ),
    );
  }
}
