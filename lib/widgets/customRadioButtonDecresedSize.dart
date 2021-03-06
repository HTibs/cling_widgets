import 'package:flutter/material.dart';

import 'package:cling_widgets/models/radioModel.dart';

class CustomRadioButtonDecresedSize extends StatelessWidget {
  final RadioModel _item;

  CustomRadioButtonDecresedSize(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      child: Column(
        children: <Widget>[
          getIconButton(_item.imageURI),
          Text(
            '${_item.text}',
            style: TextStyle(color: Color(0xFF4C4C4C)),
          )
        ],
      ),
    );
  }
}

MaterialButton getIconButton(icon) {
  return MaterialButton(
    child: Icon(
      Icons.movie,
      size: 20.0,
      color: Colors.white,
    ),
    onPressed: () {},
    color: Colors.white10,
    shape: CircleBorder(),
    padding: EdgeInsets.all(2.0),
    height: 30.0,
  );
}

Icon getIcon(icon) {
  switch (icon) {
    case 'club':
      return Icon(Icons.local_bar);
    case 'food':
      return Icon(Icons.local_dining);
    case 'travel':
      return Icon(Icons.terrain);
    case 'date':
      return Icon(Icons.favorite);
    case 'movie':
      return Icon(Icons.movie);
  }
}
