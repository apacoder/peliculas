import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';

class CardSwipper extends StatelessWidget {
  const CardSwipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Swiper(
        itemCount: 6,
        layout: SwiperLayout.DEFAULT,
        itemWidth: size.width * 0.5,
        itemHeight: 280,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: FadeInImage(
                placeholder: const AssetImage('assets/no-image.jpg'),
                image: AssetImage('assets/pk/00${index + 1}.png'),
              ),
            ),
          );
        },
        index: 0,
      ),
    );
  }
}

class Pokemon {
  static NetworkImage imageByID(int id) {
    return NetworkImage(
      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png',
    );
  }
}
