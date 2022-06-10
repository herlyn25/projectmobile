class Car {
  final String? color;
  final String? marca;
  final int? modelo;
  final String? placa;
  
  Car({this.color,this.marca, this.modelo, this.placa});
  
  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      color: json['Color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa : json['placa']      
    );
  }
}