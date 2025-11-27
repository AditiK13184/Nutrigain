import 'package:flutter/material.dart';
import 'package:nutrigain/home_page.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 73, 112, 160),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                padding: const EdgeInsets.all(24),
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 232, 213, 213),
                  border: Border.all(
                    color: const Color.fromARGB(255, 214, 163, 163),
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Fitness Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Age
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter age",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.cake),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 25),

                    // Gender
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      hint: const Text("Select Gender"),
                      items: const [
                        DropdownMenuItem(value: "Male", child: Text("Male")),
                        DropdownMenuItem(value: "Female", child: Text("Female")),
                        DropdownMenuItem(value: "Others", child: Text("Others")),
                      ],
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 25),

                    // Height
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter height(ft)",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.straighten),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Weight
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter weight(kg)",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.monitor_weight),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),

                    // Fitness Goal
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.fitness_center),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      hint: const Text("Select Fitness Goal"),
                      items: const [
                        DropdownMenuItem(
                            value: "Muscle gain",
                            child: Text("Muscle gain")),
                        DropdownMenuItem(
                            value: "Weight loss", child: Text("Weight loss")),
                        DropdownMenuItem(
                            value: "Maintenance", child: Text("Maintenance")),
                        DropdownMenuItem(
                            value: "Endurance", child: Text("Endurance")),
                      ],
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 25),

                    // Activity Level
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.directions_run),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      hint: const Text("Select Activity Level"),
                      items: const [
                        DropdownMenuItem(
                            value: "Sedentary", child: Text("Sedentary")),
                        DropdownMenuItem(
                            value: "Lightly active",
                            child: Text("Lightly active")),
                        DropdownMenuItem(
                            value: "Moderately active",
                            child: Text("Moderately active")),
                        DropdownMenuItem(
                            value: "Very active", child: Text("Very active")),
                      ],
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 30),

                    // Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HomePage(product: []),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 73, 112, 160),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 4,
                      ),
                      child: const Text(
                        'Complete',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
