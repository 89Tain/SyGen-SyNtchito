import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class SearchableDropDownCustom extends StatelessWidget {
  final List<String> items;
  final String hint;
  final TextEditingController controller;
  final Icon icon;

  const SearchableDropDownCustom({
    super.key,
    required this.items,
    required this.hint,
    required this.controller,
    this.icon = const Icon(Icons.search),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 40,
        color: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Expanded(
                child: DropdownSearch<String>(
                  items: items,
                  onChanged: (value) {
                    if (value != null) controller.text = value;
                  },
                  selectedItem: controller.text,
                  // Assume 'showSearchBox' is always true by default
                  // For decoration and other settings, check the latest documentation
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
