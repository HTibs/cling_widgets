import 'package:scoped_model/scoped_model.dart';

class CardDetails extends Model {
  String place;
  String type;
  String date;
  String time;
  String company;
  String description;
  String postedBy;

  CardDetails(
      {this.place,
      this.type,
      this.date,
      this.time,
      this.company,
      this.description,
      this.postedBy});
}
