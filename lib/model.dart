class Data{
  String _image;
  String _title;
  String _price;

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  Data(this._image, this._title, this._price);

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }
}