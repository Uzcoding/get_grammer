import 'package:flutter/material.dart';
import 'package:get_grammer/resources/resources.dart';
import 'package:get_grammer/utils/utils.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(28.0).copyWith(right: 30.0, top: 10.0),
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29423e3e),
              offset: Offset(0, 1),
              blurRadius: 11,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Text(
                '18:05',
                style: Styles.styleW400S12,
              ),
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 32.0,
                  backgroundColor: AppColors.darkBlue,
                  backgroundImage: AssetImage(Images.user),
                ),
                const SizedBox(width: 24.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Ройтман Рафаэль',
                      style: Styles.styleW600S13,
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                      width: 180.0,
                      child: Text(
                        'Lorem ipsum dolor sit amet ipsum amet.',
                        style: Styles.styleW400S11,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
