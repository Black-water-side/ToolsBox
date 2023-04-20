import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../router/routers_handler.dart';
import 'package:fluro/fluro.dart';

class Routes {
  //路由路径
  /// [root] 根目录
  /// [detailsPage] 详细页面配置
  /// [configureRoutes] 路由配置 :notFoundHandler未找到的路由配置z
  ///
  /// router.define(detailsPage, handler: detailsHandler);
  /// [detailsPage] 路由配置的路径
  /// [handler]
  ///

  static String root = '/';
  static String detailsPage = '/detail';
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      if (kDebugMode) {
        print('ERROR====>ROUTE WAS NOT FOUND!!!');
      }
      return null;
    });
    router.define(detailsPage, handler: detailsHandler);
  }
}
