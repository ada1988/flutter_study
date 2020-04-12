import 'package:fluro/fluro.dart';
import 'package:reyuan_version/business/mine/pages/mine_auth_page.dart';
import 'package:reyuan_version/business/mine/pages/mine_info_edit.dart';
import 'package:reyuan_version/business/mine/pages/mine_page.dart';
import 'package:reyuan_version/business/mine/pages/mine_qr_page.dart';
import 'package:reyuan_version/business/mine/pages/mine_real_auth_page.dart';
import 'package:reyuan_version/business/mine/pages/mine_real_auth_phone_page.dart';
import 'package:reyuan_version/routers/router_init.dart';
class MineRouter implements IRouterProvider{

  static String minePage = '/mine';
  static String mineQrPage = '/mine/qr';
  static String mineAuthPage = '/mine/auth';
  static String mineRealAuthPage = '/mine/auth/real';
  static String mineRealAuthPhonePage = '/mine/auth/real/phone';
  static String mineInfoEditPage = '/mine/info/edit';
  @override
  void initRouter(Router router) {
    router.define(minePage, handler: Handler(handlerFunc: (_, params) => MinePage()));
    router.define(mineQrPage, handler: Handler(handlerFunc: (_, params) => MineQrPage()));
    router.define(mineAuthPage, handler: Handler(handlerFunc: (_, params) => MineAuthPage()));
    router.define(mineRealAuthPage, handler: Handler(handlerFunc: (_, params) => MineRealAuthPage()));
    router.define(mineRealAuthPhonePage, handler: Handler(handlerFunc: (_, params) => MineRealAuthPhonePage()));
    router.define(mineInfoEditPage, handler: Handler(handlerFunc: (_, params) => MineInfoEditPage()));
    
  }
  
}