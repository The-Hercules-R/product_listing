import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:product_listing_hw/screen/home.dart';
import 'package:product_listing_hw/screen/custom_bottom_navigation_bar.dart';
import 'package:product_listing_hw/screen/my_order.dart';
import 'package:product_listing_hw/screen/product_detail.dart';
import 'package:product_listing_hw/screen/product_info.dart';
import 'package:product_listing_hw/screen/product_review.dart';
import 'package:product_listing_hw/screen/profile.dart';
import 'package:product_listing_hw/screen/setting.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: CustomBottomNavigationBar,
      initial: true,
      children: <AutoRoute>[
        AutoRoute(
          path: 'home',
          page: EmptyRouterPage,
          name: 'HomeRouter',
          children: <AutoRoute>[
            AutoRoute(
              path: '',
              page: Home,
            ),
            AutoRoute(
              path: ':productId',
              page: ProductDetail,
              children: <AutoRoute>[
                CustomRoute(
                  path: 'product-info',
                  page: ProductInfo,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                  initial: true,
                ),
                CustomRoute(
                  path: 'product-review',
                  page: ProductReview,
                  transitionsBuilder: TransitionsBuilders.fadeIn,
                ),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: 'my-order',
          page: EmptyRouterPage,
          name: 'MyOrderRouter',
          children: <AutoRoute>[
            AutoRoute(
              path: '',
              page: MyOrder,
            ),
          ],
        ),
        AutoRoute(
          path: 'profile',
          page: EmptyRouterPage,
          name: 'ProfileRouter',
          children: <AutoRoute>[
            AutoRoute(
              path: '',
              page: Profile,
            ),
            AutoRoute(
              path: 'setting',
              page: Setting,
              name: 'SettingRouter',
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
