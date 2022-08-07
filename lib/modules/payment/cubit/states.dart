abstract class PaymentStates {}

class PaymentIntialState extends PaymentStates {}

class PaymentSuccessState extends PaymentStates {}

class PaymentErrorState extends PaymentStates {
  String error;
  PaymentErrorState({required this.error});
}

class PaymentOrderSuccessState extends PaymentStates {}

class PaymentOrderErrorState extends PaymentStates {
  String error;
  PaymentOrderErrorState({required this.error});
}

class PaymentCardTokenSuccessState extends PaymentStates {}

class PaymentCardTokenErrorState extends PaymentStates {
  String error;
  PaymentCardTokenErrorState({required this.error});
}

class PaymentKioskTokenSuccessState extends PaymentStates {}

class PaymentKioskTokenErrorState extends PaymentStates {
  String error;
  PaymentKioskTokenErrorState({required this.error});
}

class PaymentRefCodeSuccessState extends PaymentStates {}

class PaymentRefCodeErrorState extends PaymentStates {
  String error;
  PaymentRefCodeErrorState({required this.error});
}
