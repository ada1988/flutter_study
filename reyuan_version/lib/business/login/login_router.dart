
import 'package:fluro/fluro.dart';
import 'package:reyuan_version/business/login/pages/login_page.dart';
import 'package:reyuan_version/business/login/pages/regist_step1_page.dart';
import 'package:reyuan_version/business/login/pages/regist_step2_page.dart';
import 'package:reyuan_version/routers/router_init.dart';



class LoginRouter implements IRouterProvider{

  static String loginPage = '/login';
  static String registep1Page = '/login/register1';
  static String registep2Page = '/login/register2';
  
  
  @override
  void initRouter(Router router) {
    router.define(loginPage, handler: Handler(handlerFunc: (_, params) => LoginPage()));
    router.define(registep1Page, handler: Handler(handlerFunc: (_, params) => RegistStep1Page()));
    router.define(registep2Page, handler: Handler(handlerFunc: (_, params) => RegistStep2Page()));
  }
  
}