import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getx_mvvm/views/PostListView.dart';

import '../views/PostDetailView.dart';

class Routes {
  static String homeScreen = '/homeScreen';

  static String splashScreen = '/splashScreen';

  static String details = '/details';

  static String onboardPage = '/onboardPage';
}

appRoutes() => [
  //GetPage(name: Routes.splashScreen, page: () => SplashScreen()),
  GetPage(
    name: Routes.homeScreen,
    page: () => Postlistview(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  GetPage(
    name: Routes.details,
    page: () => PostDetailView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),
  /*GetPage(
    name: Routes.onboardPage,
    page: () => OnBoardingScreen(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 500),
  ),*/
];