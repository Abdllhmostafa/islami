import 'package:flutter/material.dart';
import 'package:islami/quraan_tab/surah.dart';

class SurahItem extends StatelessWidget {
  SurahItem(this.surah);
  Surah surah;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 52,
            width: 52,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/PNG Images/bord.png'),
              ),
            ),
            child: Center(
              child: Text(
                '${surah.surahNum}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                surah.englishName,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                '${surah.ayatCount}  Verses',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            surah.arabichName,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
