import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomesScreen extends StatelessWidget {
  const HomesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Películas en cines'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        body: Column(
          children: const [
            // TODO: CardSwiper
            CardSwipper()
            // TODO: Listado horizontal de películas
          ],
        ));
  }
}
