class Item {
  String imgPath;
  double price;
  String location;
  String name;

  Item({required this.imgPath, required this.name, required this.price, this.location = "Main branch"});
}

  final List<Item> items = [
  Item(name: "product1", price: 12.99, imgPath: "images/1.jpg", location: "Cairo shop"),
  Item(name: "product2", price: 12.99, imgPath: "images/2.jpg"),
  Item(name: "product3", price: 12.99, imgPath: "images/3.jpg"),
  Item(name: "product4", price: 12.99, imgPath: "images/4.jpg"),
  Item(name: "product5", price: 12.99, imgPath: "images/5.jpg"),
  Item(name: "product6", price: 12.99, imgPath: "images/6.jpg"),
  Item(name: "product7", price: 12.99, imgPath: "images/7.jpg"),
  Item(name: "product8", price: 12.99, imgPath: "images/8.jpg"),
];