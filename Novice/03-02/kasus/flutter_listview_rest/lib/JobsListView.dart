import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListViewJsonapi extends StatefulWidget {
  _ListViewJsonapiState createState() => _ListViewJsonapiState();
}

class _ListViewJsonapiState extends State<ListViewJsonapi> {
  final String uri = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Users>> _fetchUsers() async {
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      final items = json.decode(response.body).cast<Map<String, dynamic>>();
      List<Users> listOfUsers = items.map<Users>((json) {
        return Users.fromJson(json);
      }).toList();

      return listOfUsers;
    } else {
      throw Exception('Failed to load internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listv07777 cl piew with JSON'),
      ),
      body: FutureBuilder<List<Users>>(
        future: _fetchUsers(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());

          return ListView(
            children: snapshot.data
                .map((user) => ListTile(
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text(user.name[0],
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            )),
                      ),
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}

class Users {
  int id;
  String name;
  String username;
  String email;

  Users({
    this.id,
    this.name,
    this.username,
    this.email,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
    );
  }
}