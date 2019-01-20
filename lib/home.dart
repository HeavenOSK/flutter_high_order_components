import 'package:flutter/material.dart';

const _LabelTextStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

const _InformationTextStyle = TextStyle(
  fontSize: 14.0,
  fontWeight: FontWeight.w600,
);
const _BorderColor = Colors.grey;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter High Order Components'),
      ),
      body: _buildSettingsList(),
    );
  }

  _buildSettingsList() {
    return ListView(
      children: <Widget>[
        Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'ユーザ名',
                style: _LabelTextStyle,
              ),
              GestureDetector(
                child: Icon(Icons.navigate_next),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: _BorderColor,
              ),
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'お知らせ',
                style: _LabelTextStyle,
              ),
              RawMaterialButton(
                child: Text(
                  'もっと見る',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                fillColor: Colors.blue,
                onPressed: () {},
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: _BorderColor,
              ),
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'アプリ連携',
                style: _LabelTextStyle,
              ),
              Switch(
                value: false,
                onChanged: (currentValue) {},
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: _BorderColor,
              ),
            ),
          ),
        ),
        Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'バージョン',
                style: _LabelTextStyle,
              ),
              Text(
                '1.0.0',
                style: _InformationTextStyle,
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1.0,
                color: _BorderColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
