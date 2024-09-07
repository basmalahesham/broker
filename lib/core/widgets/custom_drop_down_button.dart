import 'package:broker/core/utils/styles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.items, this.filled,
  });
  final List<String> items;
   final  bool? filled;
  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      items: items,
      dropdownButtonProps: const DropdownButtonProps(
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Color(0xFF332620),
        ),
      ),
      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          fillColor: Colors.white,
          filled: filled,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Color(0xFFAFAFAF),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Color(0xFFAFAFAF),
            ),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9),
            borderSide: const BorderSide(
              color: Color(0xFFAFAFAF),
            ),
          ),
        ),
      ),
      onChanged: print,
      selectedItem: items.first,
      popupProps: PopupPropsMultiSelection.dialog(
        showSelectedItems: true,
        fit: FlexFit.loose,
        dialogProps: const DialogProps(
          backgroundColor: Color(0xFF1E2631),
        ),
        itemBuilder: (context, item, isSelected) => Column(
          children: [
            ListTile(
              trailing: isSelected
                  ? const Icon(
                Icons.radio_button_checked,
                color: Colors.blue,
              )
                  : const Icon(Icons.radio_button_unchecked),
              title: Text(
                item,
                style: Styles.textStyle14.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            item == items.last
                ? const Visibility(
              visible: false,
              child: Divider(),
            )
                : const Divider(
              indent: 10,
              endIndent: 10,
              color: Color(0xFFAFAFAF),
            ),
          ],
        ),
      ),
    );
  }
}
