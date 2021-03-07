import 'package:flutter/material.dart';
import 'package:jo_pili/widgets/drawer.dart';

//Reportage france 3 FLORA
//https://youtu.be/JMRXn3i27d0
// Longeville
//https://youtu.be/E75ax8pWEmU
//Reportage tv8 Flora
//https://youtu.be/Ygeo33H_qiQ
class CoachingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("Coaching"),
      ),
      body: Container(),
    );
  }
}
