import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MovieRating(),
  ));
}

class MovieRating extends StatelessWidget {
  const MovieRating({super.key});

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
                    Icon(Icons.star, color: Colors.amber,),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text('+')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.list_alt, color: Colors.amber,),
                    Text('Added to your list', style: TextStyle(color:Colors.white, fontSize: 20),),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text('Remove')),

                  ],
                ),
              ),
              Expanded(child: Image.asset('assets/img_2.png')),
            ],
          ),
        )
    );
  }
}
