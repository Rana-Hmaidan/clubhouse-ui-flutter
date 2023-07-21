import 'package:course_news_app/screens/home_page.dart';
import 'package:course_news_app/widgets/TitlesWidgets.dart';
import 'package:course_news_app/widgets/CardWidgets.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {

 const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {

  List<String> titles = [
    'All',
    'Politic',
    'Sport',
    'Education',
    'Game',
    'New',
    'Weather',
    'Art',
  ];

  List<String> cardImageList = ['assets/images/volleyball.jpg','assets/images/education.jpg','assets/images/fireman.jpg'];
  List<String> cardTitleList = ['Sport','Education','World'];
  List<String> cardSubTitleList = ['What Training Do Volleyball Players Need?','Secondary School Places: When do parents find out?',
  '6 Houses Destroyed In Massive Fire In Assam\'s K.'];
  List<String> cardPublisherImageList = ['assets/images/user1.jpg','assets/images/user2.jpg','assets/images/user3.jpg'];
  List<String> cardPublisherNameList = ['McKindney','AslamK','Rosemary'];
  List<String> cardPublisherDateList = ['Feb 27 2023','Feb 28 2023','Feb 29 2023'];


    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left:16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
          tooltip: 'HomePage',
          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context) => const HomePage()));
          },
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            const SizedBox(height:15),

            Text(
              'Discover',
              style: Theme.of(context).textTheme.bodyLarge,
              ),

            Text(
              'News from all around the world',
              style: Theme.of(context).textTheme.displayMedium,
              ),

            const SizedBox(height: 18),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                      ),

                    const SizedBox(width:10),

                    Text(
                      'Search',
                      style: Theme.of(context).textTheme.displayMedium,
                      ),

                    const Spacer(),

                    const Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: SizedBox(
                        width: 30,
                        child: Image(image: AssetImage(
                          'assets/images/sliders-horizontal.png'
                          )
                          ),
                        
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:[
                  TitlesWidgets(title: titles[0],isActive: true,),
                  for(int i = 1; i< titles.length ; i++) 
                  TitlesWidgets(title: titles[i],),
                ],
              ) ,
              ),

            const SizedBox(height:16),

            Expanded(
            child:SingleChildScrollView(
              scrollDirection: Axis.vertical ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for(int i = 0; i< cardImageList.length; i++)
                    CardWidgets(
                    cardImage: cardImageList[i],
                    title: cardTitleList[i],
                    subTitle:cardSubTitleList[i],
                    publisherImage: cardPublisherImageList[i] ,
                    publisherName: cardPublisherNameList[i],
                    publisherDate: cardPublisherDateList[i],
                    ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}