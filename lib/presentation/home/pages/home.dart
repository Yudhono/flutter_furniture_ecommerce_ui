import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Modern Furniture',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    'for your home',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                icon: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape:
                        BoxShape.circle, // Changed to make the image circular
                  ),
                  child: ClipOval(
                    // Ensures the image is circular
                    child: Image.asset(
                      'assets/images/profilePict.jpg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                onPressed: () {
                  // Add search functionality here
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCard(
                      title: 'Chairs',
                      imagePath: 'assets/images/chair.jpg',
                      onTap: () {
                        // Handle tap for Chairs
                      },
                    ),
                    CategoryCard(
                      title: 'Tables',
                      imagePath: 'assets/images/table.jpg',
                      onTap: () {
                        // Handle tap for Tables
                      },
                    ),
                    CategoryCard(
                      title: 'Sofas',
                      imagePath: 'assets/images/sofa.jpg',
                      onTap: () {
                        // Handle tap for Sofas
                      },
                    ),
                    CategoryCard(
                      title: 'Beds',
                      imagePath: 'assets/images/bed.jpg',
                      onTap: () {
                        // Handle tap for Beds
                      },
                    ),
                    CategoryCard(
                      title: 'Doors',
                      imagePath: 'assets/images/bed.jpg',
                      onTap: () {
                        // Handle tap for Beds
                      },
                    ),
                    CategoryCard(
                      title: 'Benches',
                      imagePath: 'assets/images/bed.jpg',
                      onTap: () {
                        // Handle tap for Beds
                      },
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

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
