import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    const String appTitle = 
    'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'assets/images/everest.jpg'
              ),
              TitleSection(
                name: 'Mount Everest',
                location: 'The World Highest Peak',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Mount Everest, the highest peak in the world with a height of 8,848 meters above sea level, '
                    'stands majestically on the border between Nepal and Tibet '
                    'This mountain is part of the Himalayan Mountains and has become a global icon for climbers and nature lovers. '
                    'The name Everest is taken from Sir George Everest, a British geographer, but in Nepali, this mountain is known as Sagarmatha, '
                    'which means "Heavenly Forehead", and in Tibetan it is called Chomolungma, "Holy Mother of the Universe". '
                    'The history of the conquest of Mount Everest began in 1953 when Sir Edmund Hillary from New Zealand and Tenzing Norgay, '
                    'a Sherpa guide from Nepal, managed to reach the peak. '
                    'Their achievements were a historic milestone in the world of climbing and inspired many climbers from all over the world to follow in their footsteps. ',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('2,1M'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

    @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: Colors.black,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: Colors.black,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: Colors.black,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}


class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}