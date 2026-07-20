import 'package:auto_route/auto_route.dart';

import '../../features/authentication/login/login_page.dart';
import '../../features/authentication/registration/registration_page.dart';
import '../../features/buy/buy_main_page.dart';
import '../../features/buy/cart/ui/cart_page.dart';
import '../../features/buy/category_page.dart';
import '../../features/buy/course_details_page.dart';
import '../../features/buy/course_list_page.dart';
import '../../features/buy/create_pizza/ui/create_pizza_page.dart';
import '../../features/buy/order/order_page.dart';
import '../../features/buy/pancser_pengo/pancser_pengo_page.dart';
import '../../features/dashboard/dashboard_page.dart';
import '../../features/profile/profile_data_page.dart';
import '../../features/profile/profile_edit_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/login', initial: true),
    AutoRoute(page: RegistrationRoute.page, path: '/registration'),
    AutoRoute(
      page: DashboardRoute.page,
      path: '/dashboard',
      children: [
        AutoRoute(page: BuyMainRoute.page, path: 'browseMain'),
        AutoRoute(page: ProfileDataRoute.page, path: 'profileData'),
      ],
    ),
    AutoRoute(page: CategoryRoute.page, path: '/category'),
    AutoRoute(page: CourseListRoute.page, path: '/courseList'),
    AutoRoute(page: CourseDetailsRoute.page, path: '/courseDetails'),
    AutoRoute(page: CreatePizzaRoute.page, path: '/createPizza'),
    AutoRoute(page: PancserPengoRoute.page, path: '/pancserPengo'),
    AutoRoute(page: CartRoute.page, path: '/cart'),
    AutoRoute(page: OrderRoute.page, path: '/order'),
    AutoRoute(page: ProfileEditRoute.page, path: '/profileEdit'),
  ];
}