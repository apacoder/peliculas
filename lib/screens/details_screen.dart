import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  //TODO: cambiar luego por una instancia de movie

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no movies';
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const _PosterAndTittle(),
                _Overview(),
                _Overview(),
                _Overview(),
                const CastingCards()
              ],
            ),
          ),
        ],
      ),
    );
    // body: CustomScrollView
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.cyan,
      expandedHeight: 200,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          padding: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          child: const Text('movie.tittle'),
          color: Colors.black38,
        ),
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTittle extends StatelessWidget {
  const _PosterAndTittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'movie.tittle',
                style: textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'movie.originalTittle',
                style: textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const Icon(Icons.star_outline, size: 18, color: Colors.grey),
                  const SizedBox(width: 5),
                  Text(
                    'movie.voteAverage',
                    style: textTheme.caption,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Occaecat elit non dolore tempor labore aute. Id exercitation in culpa quis commodo duis dolore sint in sint aliquip eiusmod consequat. Fugiat cillum voluptate minim sint ipsum ullamco culpa nulla eu eiusmod. Enim sint nostrud aliqua eiusmod ullamco ea anim cillum nisi ad laborum voluptate. Duis mollit pariatur anim amet consectetur ipsum pariatur consectetur Lorem.',
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
