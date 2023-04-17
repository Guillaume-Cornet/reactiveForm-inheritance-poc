/// year : 2016
/// month : "FEBRUARY"
/// monthValue : 2
/// dayOfMonth : 2
/// dayOfYear : 33
/// dayOfWeek : "TUESDAY"
/// chronology : {"calendarType":"iso8601","id":"ISO"}
/// era : "CE"
/// leapYear : true

class CustomDate {
  static DateTime toDateTime(Map<String, dynamic> json) {
    if (json['epochSecond'] != null) {
      return DateTime.fromMillisecondsSinceEpoch(
          json['epochSecond']!.toInt() * 1000,
          isUtc: true);
    }
    return DateTime.utc(json['year'], json['monthValue'], json['dayOfMonth']);
  }

  static DateTime? toOptionnalDateTime(Map<String, dynamic>? json) {
    if(json == null){
      return null;
    }
    return toDateTime(json);
  }
}