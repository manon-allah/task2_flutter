import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UserModel{
  final String name;
  final String type;
  final double dist;
  final double rate;
  UserModel({
    required this.name,
    required this.type,
    required this.dist,
    required this.rate,
});
}
class User_list_view extends StatelessWidget{
  List<UserModel> um =[
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
    UserModel(
        name: 'Admin',
        type: 'BMW',
        dist: 5.15,
        rate: 5.4),
  ];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey[50],
            elevation: 0,
            title: Text('Private Car',
            style: TextStyle(
            color: Colors.grey[700],
            fontSize: 40,
          ),
          ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15,),
                child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.settings_outlined,
                      size: 40,
                      color: Colors.grey[700],)
                ),
            )
          ],
        ),
        body: ListView.separated(
            itemBuilder: (context,index)=>items(um[index]),
            separatorBuilder: (context,index)=> Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[700],
              ),
            ),
            itemCount: um.length)
      );
  }
  Widget items(UserModel usmo)=> Padding(
    padding: const EdgeInsets.all(25.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage('lib/images.jpg'),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${usmo.name}',
              style: TextStyle(
                fontSize: 25,
              ),),
            Text('${usmo.type}',
              style: TextStyle(
                fontSize: 25,
              ),),
            Text('far from you ${usmo.dist} km',
              style: TextStyle(
                fontSize: 25,
              ),),
            Text('rate ${usmo.rate}',
              style: TextStyle(
                fontSize: 25,
              ),),
          ],
        ),
      ],
    ),
  );
}