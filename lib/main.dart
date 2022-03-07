import 'package:velocity_x/velocity_x.dart';

import 'general/allExports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setPathUrlStrategy(); //to remove the hashtag in the url
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: '${OtherCompany().nameInCoolForm} Donations',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: primaryColorMaterial,
          scaffoldBackgroundColor: Colors.white,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: primaryColorMaterial,
          scaffoldBackgroundColor: Colors.white,
        ),
        // home: HomePage()
        routeInformationParser: VxInformationParser(),
        routerDelegate: VxNavigator(routes: {
          "/": (_,__) => MaterialPage(child: HomePage(),)
        }),
        );
  }
}


