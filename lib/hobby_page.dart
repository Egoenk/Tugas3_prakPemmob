import 'package:flutter/material.dart';
import 'package:tugas2/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class  HobbyPage extends StatefulWidget {
  const HobbyPage({Key? key}) : super(key: key);

  @override
  _HobbyPageState createState() => _HobbyPageState();
}


class _HobbyPageState extends State<HobbyPage> {
  var namauser;
  void _loadUsername() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namauser = prefs.getString('username');

    setState(() {
    });
  }
  @override
  Widget build(BuildContext context){
    _loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hobby Page'),
      ),
      body: Center(
        child: Text('Saya $namauser , hobby saya bermain musik'),
      ),
      drawer: const SideMenu(),
    );

  }
}





