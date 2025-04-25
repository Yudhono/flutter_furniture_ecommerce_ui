import 'package:flutter/material.dart';
import 'package:flutter_furniture_ecommerce_ui/presentation/home/__components/bestSellerProductCard.dart';
import 'package:flutter_furniture_ecommerce_ui/presentation/home/__components/categoryCard.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryCard(
                  title: 'Chairs',
                  imagePath: 'assets/images/chair.png',
                  onTap: () {
                    // Handle tap for Chairs
                  },
                ),
                CategoryCard(
                  title: 'Tables',
                  imagePath: 'assets/images/table.png',
                  onTap: () {
                    // Handle tap for Tables
                  },
                ),
                CategoryCard(
                  title: 'Sofas',
                  imagePath: 'assets/images/sofa.png',
                  onTap: () {
                    // Handle tap for Sofas
                  },
                ),
                CategoryCard(
                  title: 'Beds',
                  imagePath: 'assets/images/bed.png',
                  onTap: () {
                    // Handle tap for Beds
                  },
                ),
                CategoryCard(
                  title: 'Doors',
                  imagePath: 'assets/images/doors.png',
                  onTap: () {
                    // Handle tap for Beds
                  },
                ),
                CategoryCard(
                  title: 'Benches',
                  imagePath: 'assets/images/benches.png',
                  onTap: () {
                    // Handle tap for Beds
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'Best Sellers',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'View All',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Handle view all action
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BestSellerProductCard(
                  imagePath: 'assets/images/sofa.jpg',
                  title: 'Modern Sofa',
                  price: "299.99",
                  onTap: () {
                    // Handle tap for Modern Sofa
                  },
                ),
                BestSellerProductCard(
                  imagePath: 'assets/images/chairs1.jpg',
                  title: 'Stylish Chair',
                  price: "149.99",
                  onTap: () {
                    // Handle tap for Stylish Chair
                  },
                ),
                BestSellerProductCard(
                  imagePath: 'assets/images/table.jpg',
                  title: 'Elegant Table',
                  price: "199.99",
                  onTap: () {
                    // Handle tap for Elegant Table
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'View All',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black45,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                onPressed: () {
                  // Handle view all action
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
