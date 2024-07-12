class Product {
  final String name;
  final double price;
  final String description;
  final String imagePath;
  int quantity;
  double totalprice;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    this.quantity = 0,
    this.totalprice = 0
  });

  //Função incremento de quantidade       "Aumentar"

  void incrementQuantity() {
    quantity++;
    totalprice += price;
  }

  //Função decremento de quantidade       "Diminuir"
  void decreamentQuantity() {
    quantity--;
    totalprice -= price;
  }

  //Função quantidade inicial

  void initialQuantity() {
    quantity = 0;
    totalprice = 0;
  }
}
