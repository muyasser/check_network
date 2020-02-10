import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'enums/connectivity_status.dart';

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final connectionStatus = Provider.of<ConnectivityStatus>(context);

    Widget buildbody() {
      if (connectionStatus == ConnectivityStatus.Wifi) {
        return Center(
          child: Icon(Icons.wifi),
        );
      } else if (connectionStatus == ConnectivityStatus.Cellular) {
        return Center(
          child: Icon(Icons.signal_cellular_4_bar),
        );
      } else {
        return Center(
          child: Icon(Icons.airplanemode_active),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: buildbody(),
    );
  }
}
