import 'package:flutter/material.dart';
import 'package:reyuan_version/business/home/home_routers.dart';
import 'package:reyuan_version/business/login/login_router.dart';
import 'package:reyuan_version/common/common.dart';
import 'package:reyuan_version/common/res/resources.dart';
import 'package:reyuan_version/common/util/toast.dart';
import 'package:reyuan_version/routers/fluro_navigator.dart';
import 'package:reyuan_version/widgets/app_bar.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/login_text_field.dart';
import 'package:reyuan_version/widgets/my_button.dart';
import 'package:reyuan_version/common/util/utils.dart';
import 'package:flustars/flustars.dart' as FlutterStars;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _vCodeController = TextEditingController();
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  bool _isClick = false;

  @override
  void initState() {
    super.initState();
    _phoneController.addListener(_verify);
    _vCodeController.addListener(_verify);
  }

  void _login() {
    FlutterStars.SpUtil.putString(Constant.phone, _phoneController.text);
    NavigatorUtils.push(context, HomeRouter.homePage);
  }

  void _verify() {
    String name = _phoneController.text;
    String vCode = _vCodeController.text;
    bool isClick = true;
    if (name.isEmpty || name.length < 11) {
      isClick = false;
    }
    if (vCode.isEmpty || vCode.length < 6) {
      isClick = false;
    }
    if (isClick != _isClick) {
      setState(() {
        _isClick = isClick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        //backgroundColor: Color(0xFF282F52),
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/login/login_bj.png"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: MyScrollView(
            keyboardConfig: Utils.getKeyboardActionsConfig(
                context, [_nodeText1, _nodeText2]),
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
            children: _buildBody(),
          ),
        ));
  }

  _buildBody() {
    return [
      Gaps.vGap104,
      Center(
        child: Image.asset('assets/images/login/icon_logo.png',width: 90,height: 90,),
      ),
      Gaps.vGap32,
      Center(
        child: const Text(
          '找到你的另一半，从这里开始',
          style: TextStyles.textSize20,
        ),
      ),
      Gaps.vGap16,
      LoginTextField(
        focusNode: _nodeText1,
        controller: _phoneController,
        maxLength: 11,
        keyboardType: TextInputType.phone,
        hintText: '请输入手机号',
      ),
      Gaps.vGap8,
      LoginTextField(
        focusNode: _nodeText2,
        controller: _vCodeController,
        maxLength: 6,
        keyboardType: TextInputType.number,
        hintText: '请输入验证码',
        getVCode: () {
          Toast.show('获取验证码');
          return Future.value(true);
        },
      ),
      Gaps.vGap8,
      Container(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            child: RichText(
              text: TextSpan(
                text: '提示：未注册账号的手机号，请先',
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp14),
                children: <TextSpan>[
                  TextSpan(
                      text: '注册',
                      style: TextStyle(color: Theme.of(context).errorColor)),
                  TextSpan(text: '。'),
                ],
              ),
            ),
            onTap: () =>
                NavigatorUtils.push(context, LoginRouter.registep1Page),
          )),
      Gaps.vGap24,
      MyButton(
        onPressed: _isClick ? _login : null,
        text: '登录',
      ),
      Container(
        height: 40.0,
        alignment: Alignment.centerRight,
        child: GestureDetector(
          child: Text(
            '忘记密码',
            style: Theme.of(context).textTheme.subtitle,
          ),
        ),
      )
    ];
  }
}
