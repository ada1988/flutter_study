import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:reyuan_version/business/home/home_routers.dart';
import 'package:reyuan_version/business/home/pages/home_page.dart';
import 'package:reyuan_version/business/login/login_router.dart';
import 'package:reyuan_version/business/mine/mine_routers.dart';
import 'package:reyuan_version/routers/404.dart';
import 'package:reyuan_version/routers/router_init.dart';

import 'package:reyuan_version/business/home/pages/webview_page.dart';
class Routes {

  static String home = '/home';
  static String webViewPage = '/webview';

  static List<IRouterProvider> _listRouter = [];

  static void configureRoutes(Router router) {
    /// 指定路由跳转错误返回页
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        debugPrint('未找到目标页');
        return WidgetNotFound();
      });

    router.define(home, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) => HomePage()));
    
    router.define(webViewPage, handler: Handler(handlerFunc: (_, params) {
      String title = params['title']?.first;
      String url = params['url']?.first;
      return WebViewPage(title: title, url: url);
    }));
    
    _listRouter.clear();
    /// 各自路由由各自模块管理，统一在此添加初始化
    _listRouter.add(LoginRouter());//登录路由
    _listRouter.add(HomeRouter());//主页路由
    _listRouter.add(MineRouter());//我的路由
  
    /// 初始化路由
    _listRouter.forEach((routerProvider) {
      routerProvider.initRouter(router);
    });
  }
}
