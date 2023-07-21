import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {

  final String cardImage, title, subTitle, publisherImage, publisherName, publisherDate;
  
  const CardWidgets({
    super.key,
    required this.cardImage,
    required this.title,
    required this.subTitle,
    required this.publisherImage,
    required this.publisherName,
    required this.publisherDate
    });

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  height: MediaQuery.of(context).size.width * 0.25,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), 
                    image: DecorationImage(
                          image: AssetImage(cardImage),
                          fit: BoxFit.cover, //change image fill type
                        ),
                      ),
                    ),

              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                
                        Text(
                          title,
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                
                        const SizedBox(height:12),
                            
                        Text(
                          subTitle,
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                
                        const SizedBox(height:12),
                
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                               margin: const EdgeInsets.only(right: 5.0),
                               height: 30,
                               width: 30,
                               decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50), 
                                  image: DecorationImage(
                                    image: AssetImage(publisherImage),
                                    fit: BoxFit.cover, //change image fill type
                                  ),
                                ),
                              ),
                
                              Text(
                                publisherName,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                
                              const SizedBox(width:9),
                              
                              const CircleAvatar(
                                backgroundColor:Colors.grey,
                                radius: 4,
                              ),
                      
                              const SizedBox(width:9),
                
                              Text(
                                publisherDate,
                                style: Theme.of(context).textTheme.displaySmall,
                              ),
                
                            ],
                          )
                          
                        ],
                        ),
                  ),
                 ),
                    ],
                  );
  }
}