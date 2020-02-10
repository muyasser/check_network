import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'another_screen.dart';
import 'enums/connectivity_status.dart';

class NetworkSensitive extends StatelessWidget {
  final Widget child;
  final double opacity;

  NetworkSensitive({this.child, this.opacity = 0.5});
  @override
  Widget build(BuildContext context) {
    var connectionStatus = Provider.of<ConnectivityStatus>(context);

    Widget buildBody() {
      if (connectionStatus == ConnectivityStatus.Wifi) {
        return Center(
          child: Text('Connected to WIFI'),
        );
      } else if (connectionStatus == ConnectivityStatus.Cellular) {
        return Center(
          child: Text('Connected to Mobile Data'),
        );
      } else {
        return Center(
          child: Text('No connection'),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
      ),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AnotherScreen();
              },
            ),
          );
        },
      ),
    );
  }
}
