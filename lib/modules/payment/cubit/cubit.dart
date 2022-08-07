import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_method/models/first_token_model.dart';
import 'package:payment_method/models/order_id_token.dart';
import 'package:payment_method/modules/payment/cubit/states.dart';
import 'package:payment_method/shared/components/constant.dart';
import 'package:payment_method/shared/network/dio.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit() : super(PaymentIntialState());
  static PaymentCubit get(context) => BlocProvider.of(context);
  FirstTokenModel? firstToken;
  OrderIdModel? orderId;
  Future getFirstToken(String price, String firtName, String lastName,
      String email, String phone) async {
    DioHelperPayment.postDate(
        url: 'auth/tokens', body: {"api_key": paymobApiKey}).then((value) {
      firstToken = FirstTokenModel.fromJson(value.data);
      paymobFirstToken = firstToken!.token!;
      print("token $paymobFirstToken");
      getOrderId(price, firtName, lastName, email, phone);
      emit(PaymentSuccessState());
    }).catchError((onError) {
      emit(PaymentErrorState(error: onError.toString()));
      throw Exception(onError);
    });
  }

  Future getOrderId(String price, String firtName, String lastName,
      String email, String phone) async {
    DioHelperPayment.postDate(url: 'ecommerce/orders', body: {
      "auth_token": paymobFirstToken,
      "delivery_needed": "false",
      "amount_cents": price,
      "currency": "EGP",
      "items": []
    }).then((value) {
      // orderId = OrderIdModel.fromJson(value.data);
      orderID = value.data['id'].toString();
      print("orderID $orderID");
      getFinalCardToken(price, firtName, lastName, email, phone);
      getFinalKioskToken(price, firtName, lastName, email, phone);

      emit(PaymentOrderSuccessState());
    }).catchError((onError) {
      emit(PaymentOrderErrorState(error: onError.toString()));
      throw Exception(onError);
    });
  }

  Future getFinalCardToken(String price, String firtName, String lastName,
      String email, String phone) async {
    DioHelperPayment.postDate(url: 'acceptance/payment_keys', body: {
      "auth_token": paymobFirstToken,
      "amount_cents": price,
      "expiration": 3600,
      "order_id": orderID,
      "billing_data": {
        "apartment": "NA",
        "email": email,
        "floor": "NA",
        "first_name": firtName,
        "street": "NA",
        "building": "NA",
        "phone_number": phone,
        "shipping_method": "NA",
        "postal_code": "NA",
        "city": "NA",
        "country": "NA",
        "last_name": lastName,
        "state": "NA"
      },
      "currency": "EGP",
      "integration_id": integrationIDCard,
      "lock_order_when_paid": "false"
    }).then((value) {
      finalTokenCard = value.data['token'].toString();
      print("finalTokenCard  $finalTokenCard");
      emit(PaymentOrderSuccessState());
    }).catchError((onError) {
      print("errorrrrr");

      emit(PaymentOrderErrorState(error: onError.toString()));
      throw Exception(onError);
    });
  }

  Future getFinalKioskToken(String price, String firtName, String lastName,
      String email, String phone) async {
    DioHelperPayment.postDate(url: 'acceptance/payment_keys', body: {
      "auth_token": paymobFirstToken,
      "amount_cents": price,
      "expiration": 3600,
      "order_id": orderID,
      "billing_data": {
        "apartment": "NA",
        "email": email,
        "floor": "NA",
        "first_name": firtName,
        "street": "NA",
        "building": "NA",
        "phone_number": phone,
        "shipping_method": "NA",
        "postal_code": "NA",
        "city": "NA",
        "country": "NA",
        "last_name": lastName,
        "state": "NA"
      },
      "currency": "EGP",
      "integration_id": integrationIDKiosk,
      "lock_order_when_paid": "false"
    }).then((value) {
      finalTokenKiosk = value.data['token'].toString();
      print("finalTokenKiosk  $finalTokenKiosk");
      getRefranceCode();
      emit(PaymentKioskTokenSuccessState());
    }).catchError((onError) {
      print("errorrrrr");
      emit(PaymentKioskTokenErrorState(error: onError.toString()));
      throw Exception(onError);
    });
  }

  Future getRefranceCode() async {
    DioHelperPayment.postDate(url: 'acceptance/payments/pay', body: {
      "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
      "payment_token": finalTokenKiosk
    }).then((value) {
      refCode = value.data['id'].toString();
      print("refCode  $refCode");
      emit(PaymentRefCodeSuccessState());
    }).catchError((onError) {
      print("errorrrrr");
      emit(PaymentRefCodeErrorState(error: onError.toString()));
      throw Exception(onError);
    });
  }
}
