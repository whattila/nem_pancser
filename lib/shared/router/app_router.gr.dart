// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [BuyMainPage]
class BuyMainRoute extends PageRouteInfo<void> {
  const BuyMainRoute({List<PageRouteInfo>? children})
    : super(BuyMainRoute.name, initialChildren: children);

  static const String name = 'BuyMainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BuyMainPage();
    },
  );
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
    : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartPage();
    },
  );
}

/// generated route for
/// [CreatePizzaPage]
class CreatePizzaRoute extends PageRouteInfo<void> {
  const CreatePizzaRoute({List<PageRouteInfo>? children})
    : super(CreatePizzaRoute.name, initialChildren: children);

  static const String name = 'CreatePizzaRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreatePizzaPage();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [DishCategoryPage]
class DishCategoryRoute extends PageRouteInfo<void> {
  const DishCategoryRoute({List<PageRouteInfo>? children})
    : super(DishCategoryRoute.name, initialChildren: children);

  static const String name = 'DishCategoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DishCategoryPage();
    },
  );
}

/// generated route for
/// [DishDetailsPage]
class DishDetailsRoute extends PageRouteInfo<DishDetailsRouteArgs> {
  DishDetailsRoute({
    Key? key,
    required DishHeader header,
    List<PageRouteInfo>? children,
  }) : super(
         DishDetailsRoute.name,
         args: DishDetailsRouteArgs(key: key, header: header),
         initialChildren: children,
       );

  static const String name = 'DishDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DishDetailsRouteArgs>();
      return DishDetailsPage(key: args.key, header: args.header);
    },
  );
}

class DishDetailsRouteArgs {
  const DishDetailsRouteArgs({this.key, required this.header});

  final Key? key;

  final DishHeader header;

  @override
  String toString() {
    return 'DishDetailsRouteArgs{key: $key, header: $header}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DishDetailsRouteArgs) return false;
    return key == other.key && header == other.header;
  }

  @override
  int get hashCode => key.hashCode ^ header.hashCode;
}

/// generated route for
/// [DishListPage]
class DishListRoute extends PageRouteInfo<DishListRouteArgs> {
  DishListRoute({
    Key? key,
    required DishCategory category,
    List<PageRouteInfo>? children,
  }) : super(
         DishListRoute.name,
         args: DishListRouteArgs(key: key, category: category),
         initialChildren: children,
       );

  static const String name = 'DishListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DishListRouteArgs>();
      return DishListPage(key: args.key, category: args.category);
    },
  );
}

class DishListRouteArgs {
  const DishListRouteArgs({this.key, required this.category});

  final Key? key;

  final DishCategory category;

  @override
  String toString() {
    return 'DishListRouteArgs{key: $key, category: $category}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DishListRouteArgs) return false;
    return key == other.key && category == other.category;
  }

  @override
  int get hashCode => key.hashCode ^ category.hashCode;
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [OrderPage]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
    : super(OrderRoute.name, initialChildren: children);

  static const String name = 'OrderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OrderPage();
    },
  );
}

/// generated route for
/// [PancserPengoPage]
class PancserPengoRoute extends PageRouteInfo<void> {
  const PancserPengoRoute({List<PageRouteInfo>? children})
    : super(PancserPengoRoute.name, initialChildren: children);

  static const String name = 'PancserPengoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PancserPengoPage();
    },
  );
}

/// generated route for
/// [ProfileDataPage]
class ProfileDataRoute extends PageRouteInfo<void> {
  const ProfileDataRoute({List<PageRouteInfo>? children})
    : super(ProfileDataRoute.name, initialChildren: children);

  static const String name = 'ProfileDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileDataPage();
    },
  );
}

/// generated route for
/// [ProfileEditPage]
class ProfileEditRoute extends PageRouteInfo<void> {
  const ProfileEditRoute({List<PageRouteInfo>? children})
    : super(ProfileEditRoute.name, initialChildren: children);

  static const String name = 'ProfileEditRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileEditPage();
    },
  );
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegistrationPage();
    },
  );
}
