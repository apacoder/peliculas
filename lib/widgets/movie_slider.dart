import 'package:flutter/material.dart';

class MoviesSlider extends StatelessWidget {
  const MoviesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (_, index) => const _MoviePoster(),
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
      placeholder: AssetImage('assets/no-image.jpg'),
      image: NetworkImage('https://via.placeholder.com/190x190'),
      fit: BoxFit.cover,
    );
  }
}
