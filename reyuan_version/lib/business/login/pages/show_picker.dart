
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_picker/flutter_picker.dart';

import 'package:reyuan_version/widgets/my_button.dart';
import 'PickerData.dart';
class ShowPicker{
  final double listSpec = 4.0;
  String stateText;
  showPicker(BuildContext context) {
    Picker picker = Picker(
      adapter: PickerDataAdapter<String>(pickerdata: JsonDecoder().convert(PickerData)),
      changeToFirst: false,
      textAlign: TextAlign.left,
      textStyle: const TextStyle(color: Colors.blue),
      selectedTextStyle: TextStyle(color: Colors.red),
      columnPadding: const EdgeInsets.all(8.0),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.getSelectedValues());
      }
    );
    picker.showModal(context);
  }

  showPickerModal(BuildContext context) {
    Picker(
      adapter: PickerDataAdapter<String>(pickerdata: JsonDecoder().convert(PickerData)),
      changeToFirst: true,
      hideHeader: false,
      selectedTextStyle: TextStyle(color: Colors.blue),
      onConfirm: (Picker picker, List value) {
        print(value.toString());
        print(picker.adapter.text);
      }
    ).showModal(context); //_scaffoldKey.currentState);
  }

  showPickerIcons(BuildContext context) {
    Picker(
        adapter: PickerDataAdapter(data: [
          PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
            PickerItem(text: Icon(Icons.more)),
            PickerItem(text: Icon(Icons.aspect_ratio)),
            PickerItem(text: Icon(Icons.android)),
            PickerItem(text: Icon(Icons.menu)),
          ]),
          PickerItem(text: Icon(Icons.title), value: Icons.title, children: [
            PickerItem(text: Icon(Icons.more_vert)),
            PickerItem(text: Icon(Icons.ac_unit)),
            PickerItem(text: Icon(Icons.access_alarm)),
            PickerItem(text: Icon(Icons.account_balance)),
          ]),
          PickerItem(text: Icon(Icons.face), value: Icons.face, children: [
            PickerItem(text: Icon(Icons.add_circle_outline)),
            PickerItem(text: Icon(Icons.add_a_photo)),
            PickerItem(text: Icon(Icons.access_time)),
            PickerItem(text: Icon(Icons.adjust)),
          ]),
          PickerItem(text: Icon(Icons.linear_scale), value: Icons.linear_scale, children: [
            PickerItem(text: Icon(Icons.assistant_photo)),
            PickerItem(text: Icon(Icons.account_balance)),
            PickerItem(text: Icon(Icons.airline_seat_legroom_extra)),
            PickerItem(text: Icon(Icons.airport_shuttle)),
            PickerItem(text: Icon(Icons.settings_bluetooth)),
          ]),
          PickerItem(text: Icon(Icons.close), value: Icons.close),
        ]),
        title: Text("Select Icon"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        },
    ).showModal(context);
  }


  showPickerDialog(BuildContext context) {
    Picker(
        adapter: PickerDataAdapter<String>(pickerdata: JsonDecoder().convert(PickerData)),
        hideHeader: true,
        title: new Text("Select Data"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }
    ).showDialog(context);
  }

  showPickerArray(BuildContext context) {
    Picker(
        adapter: PickerDataAdapter<String>(
            pickerdata: JsonDecoder().convert(PickerData2),
            isArray: true,
        ),
        hideHeader: true,
        confirm: Text("data"),
        selecteds: [3, 0, 2],
        title: Text("Please Select"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }
    ).showDialog(context);
  }

  showPickerNumber(BuildContext context) {
    Picker(
        adapter: NumberPickerAdapter(data: [
          NumberPickerColumn(begin: 0, end: 999, postfix: Text("\$"), suffix: Icon(Icons.insert_emoticon)),
          NumberPickerColumn(begin: 200, end: 100, jump: -10),
        ]),
        delimiter: [
          PickerDelimiter(child: Container(
            width: 30.0,
            alignment: Alignment.center,
            child: Icon(Icons.more_vert),
          ))
        ],
        hideHeader: true,
        title: Text("Please Select"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }
    ).showDialog(context);
  }

  showPickerNumberFormatValue(BuildContext context) {
    Picker(
        adapter: NumberPickerAdapter(data: [
          NumberPickerColumn(
              begin: 0,
              end: 999,
              onFormatValue: (v) {
                return v < 10 ? "0$v" : "$v";
              }
          ),
          NumberPickerColumn(begin: 100, end: 200),
        ]),
        delimiter: [
          PickerDelimiter(child: Container(
            width: 30.0,
            alignment: Alignment.center,
            child: Icon(Icons.more_vert),
          ))
        ],
        hideHeader: true,
        title: Text("Please Select"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
        }
    ).showDialog(context);
  }
  


  showPickerDate(BuildContext context) {
    Picker(
      hideHeader: true,
      adapter: DateTimePickerAdapter(),
      title: Text("Select Data"),
      selectedTextStyle: TextStyle(color: Colors.blue),
      onConfirm: (Picker picker, List value) {
        print((picker.adapter as DateTimePickerAdapter).value);
      }
    ).showDialog(context);
  }

  showPickerDateCustom(BuildContext context) {
    new Picker(
        hideHeader: true,
        adapter: new DateTimePickerAdapter(
          customColumnType: [2,1,0,3,4],
        ),
        title: new Text("Select Data"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print((picker.adapter as DateTimePickerAdapter).value);
        }
    ).showDialog(context);
  }

  showPickerDateRange(BuildContext context) {
    print("canceltext: ${PickerLocalizations.of(context).cancelText}");

    Picker ps = new Picker(
        hideHeader: true,
        adapter: new DateTimePickerAdapter(type: PickerDateTimeType.kYMD, isNumberMonth: true),
        onConfirm: (Picker picker, List value) {
          print((picker.adapter as DateTimePickerAdapter).value);
        }
    );

    Picker pe = new Picker(
        hideHeader: true,
        adapter: new DateTimePickerAdapter(type: PickerDateTimeType.kYMD),
        onConfirm: (Picker picker, List value) {
          print((picker.adapter as DateTimePickerAdapter).value);
        }
    );

    List<Widget> actions = [
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text(PickerLocalizations.of(context).cancelText)),
      FlatButton(
          onPressed: () {
            Navigator.pop(context);
            ps.onConfirm(ps, ps.selecteds);
            pe.onConfirm(pe, pe.selecteds);
          },
          child: new Text(PickerLocalizations.of(context).confirmText))
    ];

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text("Select Date Range"),
            actions: actions,
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Begin:"),
                  ps.makePicker(),
                  Text("End:"),
                  pe.makePicker()
                ],
              ),
            ),
          );
        });
  }

}