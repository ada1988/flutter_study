import 'package:fluro/fluro.dart';
import 'package:reyuan_version/business/mine/pages/mine_page.dart';
import 'package:reyuan_version/business/mine/pages/mine_qr_page.dart';
import 'package:reyuan_version/routers/router_init.dart';
class MineRouter implements IRouterProvider{

  static String minePage = '/mine';
  static String mineQrPage = '/mine/qr';
  @override
  void initRouter(Router router) {
    router.define(minePage, handler: Handler(handlerFunc: (_, params) => MinePage()));
    router.define(mineQrPage, handler: Handler(handlerFunc: (_, params) => MineQrPage()));
  }
  
}