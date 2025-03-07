import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MovieRating(),
  ));
}

class MovieRating extends StatefulWidget {
  const MovieRating({super.key});

  @override
  State<MovieRating> createState() => _MovieRatingState();
}

class _MovieRatingState extends State<MovieRating> {

  int movieRating = 1;
  bool isAdded = false;

  void increaseRating () {
    setState(() {
      movieRating = (movieRating < 5 ? movieRating + 1 : 1);
    });
  }

  void addRemove() {
    setState(() {
      isAdded = !isAdded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[900],
        title: Text('Movie Rating',
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),),
      ),
      body:
        Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Did you like your movie?', style: TextStyle(color:Colors.white, fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Rating', style: TextStyle(color:Colors.white, fontSize: 20),),
                    for (int i = 0; i < movieRating; i++)
                      Icon(Icons.star, color: Colors.amber,),
                    Spacer(),
                    TextButton(onPressed: (){increaseRating();}, child: Text('+')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (isAdded)
                      Icon(Icons.list_alt, color: Colors.amber,),
                    if (isAdded)
                      Text('Added to your list', style: TextStyle(color:Colors.white, fontSize: 20),),
                    Spacer(),
                    TextButton(onPressed: (){addRemove();},
                        child: (isAdded ? Text('Remove') : Text('Add to your list')),

                    )],
                ),
              ),
              Expanded(child: Image.asset('assets/img_2.png')),
            ],
          ),
        )
    );
  }
}
