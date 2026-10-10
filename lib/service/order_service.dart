import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fecommerce/contoller/cart_controller.dart';
import 'package:fecommerce/contoller/storage_controller.dart';
import 'package:fecommerce/utils/dio_connector.dart';
import 'package:get/get.dart' hide FormData, MultipartFile, Response;

class OrderService {
  static Future<Response> placeOrder(File file) async{
    var token = StorageController().getToken();
    final cartController = Get.find<CartController>();

    var items = cartController.cartItems.value.data.map((e) => {"product_id" : e.productId,"qty" : e.quantity}).toList();

    // File Upload Code goes here
    FormData formData = FormData.fromMap({
      "payment_receipt" : await MultipartFile.fromFile(
        file.path,
        filename: file.path.split("/").last
      ),
      "items" : items,
    });

    DioConnector.dio.options.headers['Authorization'] = "Bearer $token";

    var response = await DioConnector.dio.post("order",data: formData);
    return response;
  }
}