import 'package:flutter/material.dart';
import 'package:medica/provider/provider.dart';
import 'package:medica/resources/import_resources.dart';
import 'package:medica/resources/resources.dart';
import 'ui/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ButtonProvider()),
        ChangeNotifierProvider(create: (context) => DropDown()),
        ChangeNotifierProvider(create: (context) => ChangeColor()),
        ChangeNotifierProvider(create: (context) => BottumNavigation()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            theme: ThemeData(
              fontFamily: "SansJP",
              scaffoldBackgroundColor: ColorManager.whiteColor,
            ),
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
            getPages: routes,
          );
        },
      ),
    );
  }
}
