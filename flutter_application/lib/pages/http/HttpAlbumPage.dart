import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpAlbumPage extends StatefulWidget {
  const HttpAlbumPage({super.key});

  @override
  State<HttpAlbumPage> createState() => _HttpAlbumPageState();
}

class _HttpAlbumPageState extends State<HttpAlbumPage> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text(snapshot!.error.toString());
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Album> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'),
      headers: {HttpHeaders.authorizationHeader: 'Basic your_api_token'});

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Fail to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      ({'userId': int userId, 'id': int id, 'title': String title}) =>
        Album(userId: userId, id: id, title: title),
      _ => throw const FormatException('Failed to load album')
    };
  }
}
