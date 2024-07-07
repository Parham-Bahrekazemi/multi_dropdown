import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class MultiSelectDropDownWidget extends StatelessWidget {
  const MultiSelectDropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiSelectDropDown.network(
      dropdownBorderRadius: 12,
      dropdownHeight: 400,
      selectedOptionIcon: const Icon(Icons.close),
      selectedOptionTextColor: Colors.black,
      searchLabel: 'Search in List',
      showChipInSingleSelectMode: true,
      searchEnabled: true,
      onOptionSelected: (options) {},
      networkConfig: NetworkConfig(
        url: 'https://jsonplaceholder.typicode.com/users',
        method: RequestMethod.get,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
      chipConfig: const ChipConfig(wrapType: WrapType.scroll),
      responseParser: (response) {
        final list = (response as List<dynamic>).map((e) {
          final item = e as Map<String, dynamic>;

          return ValueItem(
            label: item['name'],
            value: item['id'].toString(),
          );
        }).toList();

        return Future.value(list);
      },
      responseErrorBuilder: ((context, body) {
        return const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('خظا در دریافت اطلاعات'),
        );
      }),
    );
  }
}
