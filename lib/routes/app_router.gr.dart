// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i10;

import '../screen/custom_bottom_navigation_bar.dart' as _i1;
import '../screen/home.dart' as _i3;
import '../screen/my_order.dart' as _i7;
import '../screen/product_detail.dart' as _i4;
import '../screen/product_info.dart' as _i5;
import '../screen/product_review.dart' as _i6;
import '../screen/profile.dart' as _i8;
import '../screen/setting.dart' as _i9;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    CustomBottomNavigationBar.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.CustomBottomNavigationBar());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    MyOrderRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    Home.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Home());
    },
    ProductDetail.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailArgs>(
          orElse: () =>
              ProductDetailArgs(productId: pathParams.optInt('productId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetail(key: args.key, productId: args.productId));
    },
    ProductInfo.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.ProductInfo(),
          transitionsBuilder: _i2.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    ProductReview.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ProductReview(),
          transitionsBuilder: _i2.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    MyOrder.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.MyOrder());
    },
    Profile.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Profile());
    },
    SettingRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Setting());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(CustomBottomNavigationBar.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: CustomBottomNavigationBar.name,
              children: [
                _i2.RouteConfig(Home.name, path: '', parent: HomeRouter.name),
                _i2.RouteConfig(ProductDetail.name,
                    path: ':productId',
                    parent: HomeRouter.name,
                    children: [
                      _i2.RouteConfig('#redirect',
                          path: '',
                          parent: ProductDetail.name,
                          redirectTo: 'product-info',
                          fullMatch: true),
                      _i2.RouteConfig(ProductInfo.name,
                          path: 'product-info', parent: ProductDetail.name),
                      _i2.RouteConfig(ProductReview.name,
                          path: 'product-review', parent: ProductDetail.name)
                    ])
              ]),
          _i2.RouteConfig(MyOrderRouter.name,
              path: 'my-order',
              parent: CustomBottomNavigationBar.name,
              children: [
                _i2.RouteConfig(MyOrder.name,
                    path: '', parent: MyOrderRouter.name)
              ]),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: CustomBottomNavigationBar.name,
              children: [
                _i2.RouteConfig(Profile.name,
                    path: '', parent: ProfileRouter.name),
                _i2.RouteConfig(SettingRouter.name,
                    path: 'setting', parent: ProfileRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.CustomBottomNavigationBar]
class CustomBottomNavigationBar extends _i2.PageRouteInfo<void> {
  const CustomBottomNavigationBar({List<_i2.PageRouteInfo>? children})
      : super(CustomBottomNavigationBar.name,
            path: '/', initialChildren: children);

  static const String name = 'CustomBottomNavigationBar';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class MyOrderRouter extends _i2.PageRouteInfo<void> {
  const MyOrderRouter({List<_i2.PageRouteInfo>? children})
      : super(MyOrderRouter.name, path: 'my-order', initialChildren: children);

  static const String name = 'MyOrderRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter({List<_i2.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.Home]
class Home extends _i2.PageRouteInfo<void> {
  const Home() : super(Home.name, path: '');

  static const String name = 'Home';
}

/// generated route for
/// [_i4.ProductDetail]
class ProductDetail extends _i2.PageRouteInfo<ProductDetailArgs> {
  ProductDetail(
      {_i10.Key? key, int? productId, List<_i2.PageRouteInfo>? children})
      : super(ProductDetail.name,
            path: ':productId',
            args: ProductDetailArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId},
            initialChildren: children);

  static const String name = 'ProductDetail';
}

class ProductDetailArgs {
  const ProductDetailArgs({this.key, this.productId});

  final _i10.Key? key;

  final int? productId;

  @override
  String toString() {
    return 'ProductDetailArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i5.ProductInfo]
class ProductInfo extends _i2.PageRouteInfo<void> {
  const ProductInfo() : super(ProductInfo.name, path: 'product-info');

  static const String name = 'ProductInfo';
}

/// generated route for
/// [_i6.ProductReview]
class ProductReview extends _i2.PageRouteInfo<void> {
  const ProductReview() : super(ProductReview.name, path: 'product-review');

  static const String name = 'ProductReview';
}

/// generated route for
/// [_i7.MyOrder]
class MyOrder extends _i2.PageRouteInfo<void> {
  const MyOrder() : super(MyOrder.name, path: '');

  static const String name = 'MyOrder';
}

/// generated route for
/// [_i8.Profile]
class Profile extends _i2.PageRouteInfo<void> {
  const Profile() : super(Profile.name, path: '');

  static const String name = 'Profile';
}

/// generated route for
/// [_i9.Setting]
class SettingRouter extends _i2.PageRouteInfo<void> {
  const SettingRouter() : super(SettingRouter.name, path: 'setting');

  static const String name = 'SettingRouter';
}
