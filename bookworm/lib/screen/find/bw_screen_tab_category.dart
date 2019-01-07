import 'package:flutter/material.dart';
import 'package:bookworm/model/bw_model_category.dart';

class BWTabItemCategory extends StatefulWidget {
  _BWTabItemCategoryState createState() => _BWTabItemCategoryState();
}

class _BWTabItemCategoryState extends State<BWTabItemCategory>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cateGoryModels.length,
      itemBuilder: _categoryWidgetBuilder,
    );
  }
}

Widget _categoryWidgetBuilder(BuildContext context, int index) {
  return Container(
    color: Colors.lightGreen[100],
    padding: EdgeInsets.all(8.0),
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: <Widget>[
        ClipRRect(
          child: Image.network(
            cateGoryModels[index].imgUrl,
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        SizedBox(height: 8.0),
        Text(cateGoryModels[index].title,
            style: Theme.of(context).textTheme.title),
        SizedBox(height: 8.0),
        Text(cateGoryModels[index].description,
            style: Theme.of(context).textTheme.subtitle),
      ],
    ),
  );
}
