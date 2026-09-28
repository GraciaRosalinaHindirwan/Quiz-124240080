import 'package:flutter/material.dart';
import 'package:kuis_mobile/pages/destinationDetail.dart';
import 'package:kuis_mobile/theme/appColors.dart';
import 'package:kuis_mobile/models/destinationModels.dart';

class Destinationlist extends StatelessWidget {
  const Destinationlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat Datang!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary,
                    ),
                  ),
                  Text(
                    "Find Your Perfect Destination!",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 36),

              Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //gridnya disusun 2 kolom 
                      crossAxisSpacing: 16, 
                      mainAxisSpacing: 16, 
                      childAspectRatio: 0.65, 
                    ), 
                    itemCount: destinationList.length, //dibuat sebanyak berapa buku 
                    itemBuilder: (context, index){ // tiap card mau ditampilin gimana 
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => Destinationdetail(destination: destinationList[index]),
                            ),
                          ); 
                        },
        
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.network(
                                destinationList[index].imageUrl,
                                fit: BoxFit.cover
                              ),
                            ),

                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.8) 
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              left: 12,
                              right: 12,
                              bottom: 12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    destinationList[index].name, 
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700, 
                                    ),
                                  ),

                                  Text(
                                    destinationList[index].category,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700, 
                                    ),
                                  ),

                                  Text(
                                    destinationList[index].location,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700, 
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}