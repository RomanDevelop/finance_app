import 'package:flutter/material.dart';

// Define a callback type for the selected sort type
typedef SortByCallback = void Function(SortBy selectedSortBy);

// Define sorting options
enum SortBy {
  alphabetical,
  reverseAlphabetical,
  dateAsc,
  dateDesc,
  date,
  amount
}

// Sort function that sorts the list based on the selected criterion
List<String> sortItems(List<String> items, SortBy sortBy) {
  switch (sortBy) {
    case SortBy.alphabetical:
      items.sort();
      break;
    case SortBy.reverseAlphabetical:
      items.sort((a, b) => b.compareTo(a)); // Reverse alphabetical order
      break;
    case SortBy.dateAsc:
      // Example: sorting by a date field. Assuming items are date strings
      items.sort();
      break;
    case SortBy.dateDesc:
      // Example: sorting by a date field in descending order
      items.sort((a, b) => b.compareTo(a)); // Reverse date order
      break;
    case SortBy.date:
    // TODO: Handle this case.
    case SortBy.amount:
    // TODO: Handle this case.
  }
  return items;
}

class SortByFilter extends StatelessWidget {
  const SortByFilter(
      {Key? key, required this.selectedSortBy, required this.onSortByChanged})
      : super(key: key);

  final SortBy selectedSortBy;
  final SortByCallback onSortByChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<SortBy>(
      hint: const Text('Sort By'),
      value: selectedSortBy, // Display the selected sort option
      onChanged: (SortBy? selectedSortBy) {
        if (selectedSortBy != null) {
          onSortByChanged(
              selectedSortBy); // Call the callback with the selected sort option
        }
      },
      items: const [
        DropdownMenuItem(
          value: SortBy.alphabetical,
          child: Text('Sort by'),
        ),
        DropdownMenuItem(
          value: SortBy.reverseAlphabetical,
          child: Text('Reverse Alphabetical'),
        ),
        DropdownMenuItem(
          value: SortBy.dateAsc,
          child: Text('Date Ascending'),
        ),
        DropdownMenuItem(
          value: SortBy.dateDesc,
          child: Text('Date Descending'),
        ),
      ],
    );
  }
}
