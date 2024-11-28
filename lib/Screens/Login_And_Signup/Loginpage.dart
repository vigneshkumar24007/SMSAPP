/*
import 'package:flutter/material.dart';
import 'package:sqflites/Database_helper/User_Service.dart';
import 'package:sqflites/Model/Mdl_Users.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController Contactcontroller = TextEditingController();
  TextEditingController Descrptioncontroller = TextEditingController();
  bool _Validate = false;
  var _userservice = UserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: Namecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: Contactcontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'contact',
                      errorText: _Validate ? 'Validate Can\'t be empty' : null),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: Descrptioncontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'description',
                      errorText: _Validate ? 'Vale can\'t be empty' : null),
                ),
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        Namecontroller.text.isEmpty
                            ? _Validate = true
                            : _Validate = false;
                        Contactcontroller.text.isEmpty
                            ? _Validate = true
                            : _Validate = false;
                        Descrptioncontroller.text.isEmpty
                            ? _Validate = true
                            : _Validate = false;
                      });
                      if (_Validate == false) {
                        var _User = MdlUsers();
                        _User.name = Namecontroller.text;
                        _User.contact = Contactcontroller.text;
                        _User.description = Descrptioncontroller.text;
                        var results = await _userservice.SaveUser(_User);
                        print(Namecontroller.text);
                        print(results);
                        return results;
                      }
                    },
                    child: Text('Login')),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Namecontroller.text = '';
                      Contactcontroller.text = '';
                      Descrptioncontroller.text = '';
                    },
                    child: Text('Cancel'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
