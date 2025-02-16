import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class receiveData extends StatelessWidget {
  const receiveData({super.key});

  @override
  Widget build(BuildContext context) {
    final providerdata = Provider.of<data>(context);
    return Scaffold(
      body: Center(
        child: Text(providerdata.value.toString(), style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
