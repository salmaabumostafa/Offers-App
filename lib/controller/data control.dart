import 'package:flutter/material.dart';
import 'package:get/get.dart';

import "../models/car model.dart";

class DataController extends GetxController {
  List<Car_modeh> cars = [
    Car_modeh(
      brand: "Audi",
      model: "R8 Coupe",
      image: ['images/audi.png', 'images/audi2.png'],
      price: 12,
      color: 'red',
      motor: "V10 5.2L",
      speed: "330 km/h",
      typ: "Coupe",
      bag: "Medium",
      seats: '2',
    ),
    Car_modeh(
      brand: "Mercedes",
      model: "G63 AMG",
      image: ['images/mercedes.png'],
      price: 20,
      color: 'black',
      motor: "V8 4.0L",
      speed: "250 km/h",
      typ: "SUV",
      bag: "Large",
      seats: '5',
    ),
    Car_modeh(
      brand: "BMW",
      model: "M4 Coupe",
      image: ['images/bmw_m4.png'],
      price: 18,
      color: 'blue',
      motor: "3.0L Twin-Turbo",
      speed: "290 km/h",
      typ: "Coupe",
      bag: "Medium",
      seats: '4',
    ),
    Car_modeh(
      brand: "Porsche",
      model: "911 Turbo S",
      image: ['images/porsche_911.png'],
      price: 25,
      color: 'grey',
      motor: "3.8L Twin-Turbo",
      speed: "320 km/h",
      typ: "Coupe",
      bag: "Small",
      seats: '2',
    ),
    Car_modeh(
      brand: "Lamborghini",
      model: "Huracan Evo",
      image: ['images/lamborghini_huracan.png'],
      price: 30,
      color: 'yellow',
      motor: "V10 5.2L",
      speed: "325 km/h",
      typ: "Coupe",
      bag: "Small",
      seats: '2',
    ),
    Car_modeh(
      brand: "Ferrari",
      model: "F8 Tributo",
      image: ['images/ferrari_f8.png'],
      price: 28,
      color: 'red',
      motor: "V8 3.9L Twin-Turbo",
      speed: "340 km/h",
      typ: "Coupe",
      bag: "Small",
      seats: '2',
    ),
  ];
  ///
  List<Car_modeh> filteredCars = [];

  @override
  void onInit() {
    super.onInit();
    filteredCars = cars;
  }

  void filterDeals(String query) {
    if (query.isEmpty) {
      filteredCars = cars;
    } else {
      filteredCars = cars
          .where((car) =>
      car.brand.toLowerCase().contains(query.toLowerCase()) ||
          car.model.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    update();
  }
}
