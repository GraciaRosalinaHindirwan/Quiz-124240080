import 'package:flutter/material.dart';
import 'package:kuis_mobile/models/destinationModels.dart';
import 'package:kuis_mobile/theme/appColors.dart';

class Destinationdetail extends StatelessWidget {
  final DestinationModel destination; 

  const Destinationdetail({
    super.key, 
    required this.destination, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: Text(destination.name, 
            style: TextStyle(
              color: AppColors.background, 
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(32), 
          child: Column(
            children: [
              Image.network(destination.imageUrl, width: 100, height: 100,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 100,
                );
                }, 
              ),

              Text(
                destination.name, 
                style: TextStyle(
                  fontSize: 16, 
                  color: AppColors.textPrimary, 
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 16), 
              
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary,
                    width: 1.5 
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            destination.category,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4), 
                          Text(
                            "Category",
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),

                          
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Text(
                            destination.location,
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4), 
                          Text(
                            "Location", 
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            destination.openingHours,
                            textAlign: TextAlign.center, 
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Opening Hours",
                            textAlign: TextAlign.center,  
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary, 
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16,), 

              Text(
                "Description",
                textAlign: TextAlign.start, 
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary, 
                ),
              ),
              SizedBox(height: 8), 
              Text(destination.description),

              SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary,
                    width: 1.5 
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ticket Info",
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.secondary, 
                            ),
                          ),
                          const SizedBox(width: 4), 
                          Text(
                            destination.ticketInfo,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.textSecondary
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 8),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Attraction",
                            textAlign: TextAlign.center, 
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.secondary, 
                            ),
                          ),
                          const SizedBox(width: 4), 
                          Text(
                            destination.attraction,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12, 
                              fontWeight: FontWeight.w600,
                              color: AppColors.textSecondary
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}