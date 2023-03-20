import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;

import '../model/movie_data_model.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key});

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  Future<List<MovieDataModel>> readJsonData() async {
    //read json file
    final jsondata = await rootBundle.rootBundle.loadString('assets/data.json');
    //decode json data as list
    final list = json.decode(jsondata) as List<dynamic>;

    //map json and initialize using DataModel
    return list.map((e) => MovieDataModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.maxFinite,
        child: FutureBuilder(
          future: readJsonData(),
          builder: (context, data) {
            if (data.hasError) {
              return Center(child: Text("${data.error}"));
            } else if (data.hasData) {
              var movies = data.data as List<MovieDataModel>;
              return ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return newCardMovie(movies, index);
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Card newCardMovie(List<MovieDataModel> movies, int index) {
    var title = movies[index].title.toString();
    var year = movies[index].year.toString();
    var plot = movies[index].plot.toString();
    var cardImage = NetworkImage(movies[index].poster.toString());

    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(year),
            trailing: const Icon(Icons.favorite_outline),
          ),
          SizedBox(
            width: double.infinity,
            child: Image(
              image: cardImage,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            padding: const EdgeInsets.all(25.0),
            alignment: Alignment.centerLeft,
            child: Text(plot,
                style: const TextStyle(
                    color: Color.fromARGB(217, 148, 76, 84), fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
