import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/radio_tab/radio_item_body.dart';
import 'package:islami/radio_tab/radio_item.dart';
import 'package:islami/radio_tab/reciters_item_body.dart';

class RadioTab extends StatefulWidget {
  @override
  _RadioTabState createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int selectedIndex = 0;
  List<String> radioNames = [
    'Radio Ibrahim Al-Akdar',
    'Radio Al-Qaria Yassen',
    'Radio Ahmed Al-trabulsi',
    'Radio Addokali Mohammad Alalim',
  ];
  List<String> recitersNames = [
    'Ibrahim Al-Akdar',
    'Akram Alalaqmi',
    'Majed Al-Enezi',
    'Malik shaibat Alhamed',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppTheme.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                RadioItem(
                  index: 0,
                  selectedIndex: selectedIndex,
                  text: 'Radio',
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
                RadioItem(
                  index: 1,
                  selectedIndex: selectedIndex,
                  text: 'Reciters',
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: selectedIndex == 0
                  ? ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                      itemBuilder: (context, index) =>
                          RadioItemBody(radioName: radioNames[index]),
                      itemCount: radioNames.length,
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                      itemBuilder: (context, index) =>
                          RecitersItemBody(reciters: recitersNames[index]),
                      itemCount: recitersNames.length,
                    ),
            ),
          )
        ],
      ),
    );
  }
}
