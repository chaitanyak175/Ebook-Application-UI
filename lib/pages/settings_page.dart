import 'package:flutter/material.dart';

class EbookSettingsPage extends StatefulWidget {
  @override
  _EbookSettingsPageState createState() => _EbookSettingsPageState();
}

class _EbookSettingsPageState extends State<EbookSettingsPage> {
  bool _isDarkModeEnabled = false;
  double _fontSize = 16.0;
  bool _isAutoBrightnessEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Display Settings',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: _isDarkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  _isDarkModeEnabled = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            Text(
              'Text Settings',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Font Size',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Slider(
              value: _fontSize,
              min: 12.0,
              max: 24.0,
              divisions: 6,
              onChanged: (double value) {
                setState(() {
                  _fontSize = value;
                });
              },
              label: '$_fontSize',
            ),
            SizedBox(height: 16.0),
            Text(
              'Brightness Settings',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            SwitchListTile(
              title: Text('Auto-Brightness'),
              value: _isAutoBrightnessEnabled,
              onChanged: (bool value) {
                setState(() {
                  _isAutoBrightnessEnabled = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
