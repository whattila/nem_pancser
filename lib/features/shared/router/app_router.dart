import 'package:auto_route/auto_route.dart';

import '../../authentication/login/login_page.dart';
import '../../authentication/signup/signup_page.dart';
import '../../buy/buy_main_page.dart';
import '../../buy/cart/ui/cart_page.dart';
import '../../buy/category_page.dart';
import '../../buy/course_details_page.dart';
import '../../buy/course_list_page.dart';
import '../../buy/create_pizza/ui/create_pizza_page.dart';
import '../../buy/order/order_page.dart';
import '../../buy/pancser_pengo/pancser_pengo_page.dart';
import '../../dashboard/dashboard_page.dart';
import '../../profile/profile_data_page.dart';
import '../../profile/profile_edit_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {

  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, path: '/login', initial: true),
    AutoRoute(page: SignupRoute.page, path: '/signup'),
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