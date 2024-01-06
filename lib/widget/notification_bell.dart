import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class NotificationBell extends StatelessWidget {
  final int count;
  const NotificationBell({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final style = Theme.of(context);
    SizeConfig().init(context);
    return Stack(
      children: [
        const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
            size: 24,
          ),
        ),
        count == 0
            ? const SizedBox()
            : Positioned(
                top: 3,
                right: 2,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 7,
                    child: Center(
                      child: Text(
                        count.toString(),
                        style: style.textTheme.bodySmall!.copyWith(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ))
      ],
    );
  }
}
