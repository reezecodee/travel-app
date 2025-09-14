import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMagin,
          right: defaultMagin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Where to fly today?',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tanggerang',
                imageUrl: 'assets/image_destination_1.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'White House',
                city: 'Spain',
                imageUrl: 'assets/image_destination_2.png',
                rating: 4.7,
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination_3.png',
                rating: 4.8,
              ),
              DestinationCard(
                name: 'Mennara',
                city: 'Japan',
                imageUrl: 'assets/image_destination_4.png',
                rating: 5.0,
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/image_destination_5.png',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMagin,
          right: defaultMagin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            DestinationTile(
              name: 'Danau Beratan',
              city: 'Singajara',
              imageUrl: 'assets/image_destination_5.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/image_destination_6.png',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/image_destination_7.png',
              rating: 4.8,
            ),
            DestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/image_destination_8.png',
              rating: 4.5,
            ),
            DestinationTile(
              name: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'assets/image_destination_9.png',
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestinations(), newDestinations()],
    );
  }
}
