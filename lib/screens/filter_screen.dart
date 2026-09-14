import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  final String? initialSort;
  const FilterScreen({super.key, this.initialSort});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String? selectedSort;

  @override
  void initState() {
    super.initState();
    selectedSort = widget.initialSort;
  }

  Widget filterOption(String label, String value) {
    return CheckboxListTile(
      value: selectedSort == value,
      onChanged: (checked) {
        setState(() {
          selectedSort = checked == true ? value : null;
        });
      },
      activeColor: const Color(0xff53B175),
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    "Filters",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 48),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Sort By Price",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              filterOption("Price: Low to High", 'price_low'),
              filterOption("Price: High to Low", 'price_high'),
              const SizedBox(height: 10),
              const Text(
                "Sort By Name",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              filterOption("Name: A to Z", 'name_az'),
              filterOption("Name: Z to A", 'name_za'),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, selectedSort);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff53B175),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    "Apply Filter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
