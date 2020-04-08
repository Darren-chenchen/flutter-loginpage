abstract class CartItem {}

class CouponItem implements CartItem {
  String tag;
  String name;
  String memo;

  CouponItem(this.tag, this.name, this.memo);
}

class ProductItem implements CartItem {
  String name;
  String image;
  String unit;
  double price;
  int qty;
  bool selected;
  bool enabled;

  ProductItem(this.name, this.image, this.unit, this.price, this.qty, this.selected, this.enabled);
}

class GiftItem implements CartItem {
  String name;
  int qty;

  GiftItem(this.name, this.qty);
}

class HeaderItem implements CartItem {}

class FooterItem implements CartItem {}
