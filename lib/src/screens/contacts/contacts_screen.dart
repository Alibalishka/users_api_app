// ignore_for_file: unrelated_type_equality_checks

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../common/model/user_model.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_person_icon.dart';
import '../../common/widgets/custom_progres_indicator.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  Future getUserData() async{
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for(var i in jsonData){
      User user = User(i['name'], i['email'], i['phone']);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CustomAppBar(size: size),
          ],
          body: FutureBuilder(
            future: getUserData(),
            builder: (context, snapshot) {
              if (snapshot.data == null){
                return const CenterCircleProgIndicator();
              }else{
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (contex, index){
                    return ListTile(
                      leading: const CustomPersonIcon(),
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].email + '\n' + snapshot.data[index].phone),
                      isThreeLine: true,
                    );
                  }
                );
              }
            }),
          )
        ),
      );
  }
}