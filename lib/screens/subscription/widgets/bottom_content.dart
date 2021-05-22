import 'package:flutter/material.dart';
import 'package:get_grammer/utils/utils.dart';
import 'package:get_grammer/widgets/widgets.dart';

class BottomContent extends StatelessWidget {
  const BottomContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(6.0),
          bottomRight: Radius.circular(6.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            child: Text(
              '10 000 рублей / в месяц',
              style: Styles.styleW600S13.copyWith(
                fontSize: 16.0,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GradientButton(),
        ],
      ),
    );
  }
}
