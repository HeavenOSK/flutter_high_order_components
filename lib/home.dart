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
        _buildSettingsListItem(
          'ユーザ名',
          rightSideWidget: GestureDetector(
            child: Icon(
              Icons.navigate_next,
            ),
          ),
        ),
        _buildSettingsListItem(
          'お知らせ',
          rightSideWidget: _buildNotificationButton(
            onPressed: () {},
          ),
        ),
        _buildSettingsListItem(
          'アプリ連携',
          rightSideWidget: Switch(
            value: false,
            onChanged: (currentValue) {},
          ),
        ),
        _buildSettingsListItem(
          'バージョン',
          rightSideWidget: Text(
            '1.0.0',
            style: _InformationTextStyle,
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationButton({VoidCallback onPressed}) {
    return RawMaterialButton(
      child: Text(
        'もっと見る',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
      ),
      fillColor: Colors.blue,
      onPressed: onPressed,
    );
  }

  Widget _buildSettingsListItem(String label, {Widget rightSideWidget}) {
    final children = List<Widget>();
    children.add(
      Text(label, style: _LabelTextStyle),
    );

    if (rightSideWidget != null) {
      children.add(rightSideWidget);
    }

    return Container(
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
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
    );
  }
}
