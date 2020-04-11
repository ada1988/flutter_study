import 'package:flutter/material.dart';
import 'package:reyuan_version/widgets/app_bar.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/my_button.dart';
import 'package:reyuan_version/widgets/my_separator.dart';

class MineRealAuthPhonePage extends StatefulWidget {
  @override
  _MineRealAuthPhonePageState createState() => _MineRealAuthPhonePageState();
}

class _MineRealAuthPhonePageState extends State<MineRealAuthPhonePage> {
  bool hasPhone = false;

  void _login() {
    if(hasPhone){
      setState(() {
        hasPhone = false;
      });         
    }else{
      setState(() {
        hasPhone = true;
      });  
    }
   
  }

  Widget noAuth(){
    return Stack(
                          children: <Widget>[
                            Center(child: Container(width: 44,height: 44,child: GestureDetector(
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage:
                                      AssetImage('assets/images/login/photo_upload.png',),
                                ),
                              ),),),
                              Positioned(top: 110,left:52,child: Text("点击拍照",style: TextStyle(fontSize: 13,color: Color(0xff999999)),),)
                          ],
                        );
  }
  Widget authPhone(){
    return Stack(
                          children: <Widget>[
                            const LoadAssetImage('mine/auth_phone',
                        height: 166.0, width: 166.0),
                              Positioned(right: 4,top:4,child: const LoadAssetImage('mine/delet_phone',
                        height: 16.0, width: 16.0),)
                          ],
                        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(
            centerTitle: "实名认证", backImg: "assets/images/mine/back_black.png"),
        body: MyScrollView(
            key: const Key('mine_real_auth_page'),
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text("验证您的账户",
                    style: TextStyle(
                        color: Color(0xff181818),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12, top: 8),
                child: Text("模仿下图中的姿势进行拍照，我们将和您的头像照进行对比",
                    style: TextStyle(
                        color: Color(0xff999999),
                        fontSize: 13,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 40,
              ),
              Center(child: Container(
                padding: EdgeInsets.only(left: 25),
                child: Row(
                  children: <Widget>[
                    const LoadAssetImage('mine/auth_phone',
                        height: 166.0, width: 166.0),
                    SizedBox(width: 25),
                    Container(
                        height: 166,
                        width: 166,
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 2.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(3.0)),
                        child: hasPhone?noAuth():authPhone()),
                  ],
                ),
              ),),
              SizedBox(height: 30),
              Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: const LoadAssetImage('mine/no_check',
                        height: 12.0, width: 12.0),),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "模仿左图的姿势动作",
                    style: TextStyle(fontSize: 12, color: Color(0xff999999)),
                  ),
                )
              ],),
              SizedBox(height: 13),
              Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: const LoadAssetImage('mine/no_check',
                        height: 12.0, width: 12.0),),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "保证脸部清晰",
                    style: TextStyle(fontSize: 12, color: Color(0xff999999)),
                  ),
                )
              ],),
              SizedBox(height: 13),
              Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: const LoadAssetImage('mine/no_check',
                        height: 12.0, width: 12.0),),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "照片中只有你本人",
                    style: TextStyle(fontSize: 12, color: Color(0xff999999)),
                  ),
                )
              ],),
              SizedBox(height: 13),
              Row(children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: const LoadAssetImage('mine/no_check',
                        height: 12.0, width: 12.0),),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "在光线充足的地方",
                    style: TextStyle(fontSize: 12, color: Color(0xff999999)),
                  ),
                )
              ],),
              SizedBox(height: 226),
              MyButton(
                onPressed: _login,
                text: '提交',
              ),
            ]));
  }
}
