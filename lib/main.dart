import 'package:check_connect_app/enums/connectivity_status.dart';
import 'package:check_connect_app/services/connectivity_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'network_sensitive.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<ConnectivityStatus>.value(
      initialData: ConnectivityStatus.Offline,
      value: ConnectivityService().connectionStatusController.stream,
      child: MaterialApp(
        title: 'Material App',
        home: NetworkSensitive(),
      ),
    );
  }
}
