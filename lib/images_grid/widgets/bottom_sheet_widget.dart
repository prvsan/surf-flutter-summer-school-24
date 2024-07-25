import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 161,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.dark_mode,
                  color: Color(0xFF888888),
                ),
                SizedBox(width: 20),
                Text(
                  'Тема',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF444444),
                  ),
                ),
                Spacer(),
                Text(
                  'Светлая',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.cloud_upload,
                  color: Color(0xFF888888),
                ),
                SizedBox(width: 20),
                Text(
                  'Загрузить фото...',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF444444),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
