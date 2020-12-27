import 'package:flutter/material.dart';
import 'package:multilevel_dropdown_flutter/screens/static_dropdown.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Level Demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
              child: Container(child: Text('Static Demo')),
              onPressed: () => _staticDropDown(context),
            ),
            SizedBox(width: 20.0),
            RaisedButton(
              child: Container(child: Text('Network Demo')),
              onPressed: () => _networkDropDown(context),
            ),
          ],
        ),
      ),
    );
  }

  void _staticDropDown(context) {
    WidgetBuilder builder = (_) => StaticDropDown();
    Route route = MaterialPageRoute(builder: builder);
    Navigator.push(context, route);
  }

  void _networkDropDown(context) {}
}
