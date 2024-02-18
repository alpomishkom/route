class TextModel {
  String? text1;
  String? text2;
  String? text3;
  String? text4;

  TextModel([this.text1,this.text2,this.text3,this.text4]);
  @override
  String toString() {
   return "$text1 $text2 $text3 $text4";
  }
}