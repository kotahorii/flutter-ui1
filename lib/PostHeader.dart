import 'package:flutter/material.dart';

class _PostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: ListTile(
          leading: ClipOval(
            child: Container(
              color: Colors.grey[300],
              width: 48,
              height: 48,
              child: Icon(
                Icons.storage,
                color: Colors.grey[800],
              ),
            ),
          ),
          title: const Text('Posts'),
          subtitle: const Text('20 Posts'),
        )),
        Expanded(
            child: ListTile(
          leading: ClipOval(
            child: Container(
              color: Colors.grey[300],
              width: 48,
              height: 48,
              child: Icon(
                Icons.style,
                color: Colors.grey[800],
              ),
            ),
          ),
          title: const Text('All Types'),
          subtitle: const Text(''),
        ))
      ],
    );
  }
}

class _Post extends StatelessWidget {
  final String name;
  final String message;
  final String textReason;
  final Color colorPrimary;
  final Color colorPositive;
  final String textPositive;
  final Color colorNegative;
  final String textNegative;

  const _Post({
    required Key key,
    required this.name,
    required this.message,
    required this.textReason,
    required this.colorPrimary,
    required this.colorPositive,
    required this.textPositive,
    required this.colorNegative,
    required this.textNegative,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        elevation: 8,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            ListTile(
              leading: ClipOval(
                child: Container(
                  color: colorPrimary,
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      name.substring(0, 1),
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              title: Text(name),
              subtitle: const Text('2 min ago'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 72,
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        border: Border.all(color: colorPrimary, width: 4),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(child: Text(message))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: colorPrimary, width: 2))),
                      child: Text(
                        textReason,
                        style: const TextStyle(
                          color: Colors.blueAccent,
                        ),
                      )),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: TextButton(
                    style: TextButton.styleFrom(primary: colorNegative),
                    onPressed: () {},
                    child: Text(textNegative),
                  )),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: TextButton(
                    onPressed: () {},
                    child: Text(textPositive),
                    style: TextButton.styleFrom(
                        primary: colorPositive,
                        backgroundColor: colorPositive.withOpacity(0.2)),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PostGreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
        key: UniqueKey(),
        name: 'Pean',
        message: 'Weak reason. No action required',
        textReason: 'Repor Details',
        colorPrimary: Colors.greenAccent,
        colorPositive: Colors.greenAccent,
        textPositive: 'Keep',
        colorNegative: Colors.blueAccent,
        textNegative: 'Archive');
  }
}

class _PostRed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Post(
        key: UniqueKey(),
        name: 'Namaga Tema',
        message: 'Not recomended for publication',
        textReason: 'Pending Reason',
        colorPrimary: Colors.deepOrangeAccent,
        colorPositive: Colors.blueAccent,
        textPositive: 'Publish',
        colorNegative: Colors.deepOrangeAccent,
        textNegative: 'Decline');
  }
}
