import 'package:baiba/constants.dart';
import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final VoidCallback? press;
  const SessionCard({
    super.key,
    required this.sessionNum,
    this.isDone = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return Container(
          // Thay vì ClipRRect trực tiếp
          width:
              constraint.maxWidth / 2 -
              10, // Chia đôi chiều rộng và trừ một khoảng đệm
          margin: EdgeInsets.only(
            bottom: 10,
          ), // Thêm margin phía dưới cho mỗi card
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? COLORS['BLUE'] : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: COLORS['BLUE']!),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : COLORS['BLUE'],
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Session $sessionNum",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
