import 'package:fluro/fluro.dart';
import 'package:reyuan_version/routers/router_init.dart';
import 'package:reyuan_version/business/home/pages/home_page.dart';
class HomeRouter implements IRouterProvider{

  static String homePage = '/home';
  
  @override
  void initRouter(Router router) {
    router.define(homePage, handler: Handler(handlerFunc: (_, params) => HomePage()));
  }
  
}