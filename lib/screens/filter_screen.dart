import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  final List<String> categories;
  final List<String> brands;
  final List<String> selectedCategories;
  final List<String> selectedBrands;

  const FilterScreen({
    super.key,
    required this.categories,
    required this.brands,
    required this.selectedCategories,
    required this.selectedBrands,
  });

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  late List<String> selectedCategories;
  late List<String> selectedBrands;

  @override
  void initState() {
    super.initState();
    selectedCategories = List.from(widget.selectedCategories);
    selectedBrands = List.from(widget.selectedBrands);
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget checkOption(String label, bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xff53B175) : Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xff53B175)
                      : const Color(0xffB1B1B1),
                  width: 1.5,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check, color: Colors.white, size: 16)
                  : null,
            ),
            const SizedBox(width: 14),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                color: isSelected
                    ? const Color(0xff53B175)
                    : const Color(0xff181725),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sectionTitle("Categories"),
                      ...widget.categories.map(
                        (cat) => checkOption(
                          cat,
                          selectedCategories.contains(cat),
                          () {
                            setState(() {
                              if (selectedCategories.contains(cat)) {
                                selectedCategories.remove(cat);
                              } else {
                                selectedCategories.add(cat);
                              }
                            });
                          },
                        ),
                      ),
                      sectionTitle("Brand"),
                      ...widget.brands.map(
                        (brand) => checkOption(
                          brand,
                          selectedBrands.contains(brand),
                          () {
                            setState(() {
                              if (selectedBrands.contains(brand)) {
                                selectedBrands.remove(brand);
                              } else {
                                selectedBrands.add(brand);
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, {
                      'categories': selectedCategories,
                      'brands': selectedBrands,
                    });
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
