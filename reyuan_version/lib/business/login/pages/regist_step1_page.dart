import 'package:flutter/material.dart';
import 'package:reyuan_version/business/login/pages/show_picker.dart';
import 'package:reyuan_version/widgets/load_image.dart';

import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/my_button.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:reyuan_version/common/res/resources.dart';

class RegistStep1Page extends StatefulWidget {
  @override
  _RegistStep1PageState createState() => _RegistStep1PageState();
}

class _RegistStep1PageState extends State<RegistStep1Page> {
  int checked = 0;
  List<String> heighDatas = new List<String>();
  String heighMax = "130cm";
  ShowPicker picker = null;
  @override
  void initState() {
    super.initState();
    for (int i = 120; i < 220; i++) {
      heighDatas.add(i.toString() + "cm");
    }

    picker = new ShowPicker();
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
            padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
            children: _buildBody(),
          ),
        ));
  }

  _showSelectPicker(BuildContext context, datas, name, valueIndex) {
    List<int> defaultValue = new List();
    defaultValue.add(valueIndex);
    Picker picker = new Picker(
        adapter: PickerDataAdapter<String>(pickerdata: datas),
        changeToFirst: true,
        selecteds: defaultValue,
        textStyle: TextStyle(fontSize: 30, color: Colors.blue),
        height: 180,
        confirmTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 14,
        ),
        cancelTextStyle: TextStyle(
          color: Colors.red,
          fontSize: 14,
        ),
        cancelText: '取消',
        confirmText: '确定',
        itemExtent: 40,
        textAlign: TextAlign.left,
        columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {});
    picker.showModal(context);
  }

  void _login() {}

  /**
   * 
   */
  _buildBody() {
    return [
      Gaps.vGap24,
      Center(
          child: new Text('完善私聊',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                  inherit: false))),
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 21),
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 0)),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage('assets/images/login/photo_default.png'),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                left: 200,
                top: 80,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage('assets/images/login/photo_upload.png'),
                ),
              ),
            ],
          )),
      new Text('昵称',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              color: Colors.black,
              inherit: false)),
      Gaps.vGap12,
      new ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 52,
        ),
        child: new TextField(
          decoration: InputDecoration(
            hintText: '请填写您的用户昵称',
            hintStyle: TextStyle(fontSize: 18, color: Colors.black26),
            contentPadding: EdgeInsets.only(left: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Color(0xffF5F6F6),
          ),
        ),
      ),
      Gaps.vGap32,
      Row(
        children: <Widget>[
          new Text('性别',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                  inherit: false)),
          Gaps.hGap12,
          new Text('性别一经设置无法修改',
              style: new TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black26,
                  inherit: false)),
        ],
      ),
      Gaps.vGap12,
      Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              child: Container(
                height: 48,
                decoration: checked == 0 || checked == 1
                    ? BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(25))
                    : BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xff3AB3F9), Color(0xff027AED)]), //
                        borderRadius: BorderRadius.circular(25)),
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "男性",
                  style: TextStyle(fontSize: Dimens.font_sp18),
                ),
              ),
              onTap: () => {
                setState(() {
                  checked = 2;
                })
              },
            ),
            flex: 1,
          ),
          Gaps.hGap16,
          Expanded(
            child: GestureDetector(
              child: Container(
                height: 48,
                decoration: checked == 0 || checked == 2
                    ? BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(25))
                    : BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xffFF7959), Color(0xffF33E7E)]), //
                        borderRadius: BorderRadius.circular(25)),
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "女性",
                  style: TextStyle(fontSize: Dimens.font_sp18),
                ),
              ),
              onTap: () => {
                setState(() {
                  checked = 1;
                })
              },
            ),
            flex: 1,
          ),
        ],
      ),
      Gaps.vGap32,
      Row(
        children: <Widget>[
          new Text('生日',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                  inherit: false)),
          Gaps.hGap12,
          new Text('���遇到更多同龄人哦～',
              style: new TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black26,
                  inherit: false)),
        ],
      ),
      Gaps.vGap12,
      new ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 52,
        ),
        child: new TextField(
          decoration: InputDecoration(
            //contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            hintText: '请选择出生日期',
            hintStyle: TextStyle(fontSize: 18, color: Colors.black26),
            contentPadding: EdgeInsets.only(left: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Color(0xffF5F6F6),
          ),
        ),
      ),
      Gaps.vGap32,
      Row(
        children: <Widget>[
          new Text('身高',
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black,
                  inherit: false)),
          Gaps.hGap12,
          new Text('为您推荐更合适的男神/女神',
              style: new TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  color: Colors.black26,
                  inherit: false)),
        ],
      ),
      Gaps.vGap12,
      new ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 52,
        ),
        child: new TextField(
          onTap: () => {},
          decoration: InputDecoration(
            //contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            hintText: '请选择身高',
            hintStyle: TextStyle(fontSize: 18, color: Colors.black26),
            contentPadding: EdgeInsets.only(left: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Color(0xffF5F6F6),
          ),
        ),
      ),
      Gaps.vGap50,
      MyButton(
        onPressed: _pross,
        text: '开启热缘分之旅',
      ),
    ];
  }

  _pross() {
    print("object");
    _showPickerNumber(context);
  }

  int begin, end, nextBigin, nextEnd;
  String title;
  _showPickerNumber(BuildContext context) {
    begin = 120;
    end = 220;
    nextBigin = 150;
    nextEnd = 220;
    String unitStr = "cm";
    List<int> defaultValue = new List();
    defaultValue.add(25);
    defaultValue.add(30);
    Picker picker = new Picker(

        adapter: NumberPickerAdapter(data: [
          NumberPickerColumn(begin: begin, end: end, suffix: Text(unitStr)),
          NumberPickerColumn(
              begin: nextBigin, end: nextEnd, suffix: Text(unitStr)),
        ]),
        
        selecteds: defaultValue,
        hideHeader: false,
       
        delimiter: [
          PickerDelimiter(
              child: Container(
            color: Colors.white,
            width: 30.0,
            alignment: Alignment.center,
            child: Text(
              "至",
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
          ))
        ],
        title: Text("选择身高",
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        changeToFirst: true,
        textStyle: TextStyle(fontSize: 18, color: Colors.black),
        height: 300,
        cancel: Container(
          height: 56,
          //color: Colors.black38,
          padding: EdgeInsets.all(10),
          child: LoadAssetImage(
            'login/pop_close_btn',
            width: 24.0,
            height: 24.0,
          ),
        ),
        confirm: Container(
         
            height: 56,
            padding: EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Text("确定",
                style: TextStyle(fontSize: 14, color: Colors.black)),
              )),
        itemExtent: 60,
        textAlign: TextAlign.left,
        //columnPadding: const EdgeInsets.all(8.0),
        onConfirm: (Picker picker, List value) {
          dynamic finalMinApiValue = int.parse(
              picker.getSelectedValues()[0].toString().replaceAll(unitStr, ""));
          dynamic finalMaxApiValue = int.parse(
              picker.getSelectedValues()[1].toString().replaceAll(unitStr, ""));
          print(finalMinApiValue);
          print(finalMaxApiValue);
        },
        onSelect: (Picker picker, int index, List<int> selecteds) {
          print(int.parse(picker
              .getSelectedValues()[0]
              .toString()
              .replaceAll(unitStr, "")));
        });
    picker.showModal(context);
  }

  TextStyle _heightStyle(index) {
    print("选中。。。。。${heighDatas[index]}......${heighMax}");
    if (heighDatas[index].toString() == heighMax) {
      return TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
    } else {
      return TextStyle(fontSize: 15, color: Colors.black26);
    }
  }

  void _modalBottomSheetMenu(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return new Container(
              height: 399,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(25.0),
                      topRight: const Radius.circular(25.0))),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 56,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "选择身高",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.only(left: 20, top: 16),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topRight,
                            child: LoadAssetImage(
                              'login/qyg_shop_icon_delete',
                              width: 20.0,
                              height: 20.0,
                            ),
                            padding: EdgeInsets.only(right: 20, top: 16),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 4,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "最低",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black87),
                            ),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              "最高",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black87),
                            ),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 194,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: ListWheelScrollView(
                              itemExtent: 37,
                              useMagnifier: true,
                              magnification: 1.5,
                              squeeze: 1,
                              children: <Widget>[
                                  Text("121cm"),
                                  Text("122cm"),
                                  Text("123cm"),
                                  Text("124cm"),
                                  Text("125cm"),
                              ],
                            )),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                              alignment: Alignment.center,
                              child: ListWheelScrollView(
                              itemExtent: 37,
                              useMagnifier: true,
                              magnification: 1.5,
                              squeeze: 1,
                              children: <Widget>[
                                  Text("121cm"),
                                  Text("122cm"),
                                  Text("123cm"),
                                  Text("124cm"),
                                  Text("125cm"),
                              ],
                            )),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {},
                    textColor: Colors.black87,
                    disabledTextColor: Colours.dark_text_disabled,
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color(0xffFFDD55),
                            Color(0xffFFBB00)
                          ]), // 渐变色
                          borderRadius: BorderRadius.circular(25)),
                      width: 175,
                      alignment: Alignment.center,
                      child: Text(
                        "确 定",
                        style: TextStyle(fontSize: Dimens.font_sp18),
                      ),
                    ),
                  )
                ],
              ));
        });
  }
}
