class KioskTokenModel {
  KioskTokenModel({
    this.id,
    this.pending,
    this.amountCents,
    this.success,
    this.isAuth,
    this.isCapture,
    this.isStandalonePayment,
    this.isVoided,
    this.isRefunded,
    this.is3DSecure,
    this.integrationId,
    this.profileId,
    this.hasParentTransaction,
    this.order,
    this.createdAt,
    this.transactionProcessedCallbackResponses,
    this.currency,
    this.sourceData,
    this.apiSource,
    this.terminalId,
    this.merchantCommission,
    this.installment,
    this.isVoid,
    this.isRefund,
    this.data,
    this.isHidden,
    this.paymentKeyClaims,
    this.errorOccured,
    this.isLive,
    this.otherEndpointReference,
    this.refundedAmountCents,
    this.sourceId,
    this.isCaptured,
    this.capturedAmount,
    this.merchantStaffTag,
    this.updatedAt,
    this.owner,
    this.parentTransaction,
  });

  int? id;
  bool? pending;
  int? amountCents;
  bool? success;
  bool? isAuth;
  bool? isCapture;
  bool? isStandalonePayment;
  bool? isVoided;
  bool? isRefunded;
  bool? is3DSecure;
  int? integrationId;
  int? profileId;
  bool? hasParentTransaction;
  Order? order;
  DateTime? createdAt;
  List<dynamic>? transactionProcessedCallbackResponses;
  String? currency;
  SourceData? sourceData;
  String? apiSource;
  dynamic terminalId;
  int? merchantCommission;
  dynamic installment;
  bool? isVoid;
  bool? isRefund;
  KioskTokenModelData? data;
  bool? isHidden;
  PaymentKeyClaims? paymentKeyClaims;
  bool? errorOccured;
  bool? isLive;
  dynamic otherEndpointReference;
  int? refundedAmountCents;
  int? sourceId;
  bool? isCaptured;
  int? capturedAmount;
  dynamic merchantStaffTag;
  DateTime? updatedAt;
  int? owner;
  dynamic parentTransaction;

  factory KioskTokenModel.fromJson(Map<String, dynamic> json) =>
      KioskTokenModel(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: Order.fromJson(json["order"]),
        createdAt: DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses: List<dynamic>.from(
            json["transaction_processed_callback_responses"].map((x) => x)),
        currency: json["currency"],
        sourceData: SourceData.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data: KioskTokenModelData.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims: PaymentKeyClaims.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: DateTime.parse(json["updated_at"]),
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pending": pending,
        "amount_cents": amountCents,
        "success": success,
        "is_auth": isAuth,
        "is_capture": isCapture,
        "is_standalone_payment": isStandalonePayment,
        "is_voided": isVoided,
        "is_refunded": isRefunded,
        "is_3d_secure": is3DSecure,
        "integration_id": integrationId,
        "profile_id": profileId,
        "has_parent_transaction": hasParentTransaction,
        "order": order!.toJson(),
        "created_at": createdAt!.toIso8601String(),
        "transaction_processed_callback_responses": List<dynamic>.from(
            transactionProcessedCallbackResponses!.map((x) => x)),
        "currency": currency,
        "source_data": sourceData!.toJson(),
        "api_source": apiSource,
        "terminal_id": terminalId,
        "merchant_commission": merchantCommission,
        "installment": installment,
        "is_void": isVoid,
        "is_refund": isRefund,
        "data": data!.toJson(),
        "is_hidden": isHidden,
        "payment_key_claims": paymentKeyClaims!.toJson(),
        "error_occured": errorOccured,
        "is_live": isLive,
        "other_endpoint_reference": otherEndpointReference,
        "refunded_amount_cents": refundedAmountCents,
        "source_id": sourceId,
        "is_captured": isCaptured,
        "captured_amount": capturedAmount,
        "merchant_staff_tag": merchantStaffTag,
        "updated_at": updatedAt!.toIso8601String(),
        "owner": owner,
        "parent_transaction": parentTransaction,
      };
}

class KioskTokenModelData {
  KioskTokenModelData({
    this.message,
    this.gatewayIntegrationPk,
    this.biller,
    this.aggTerminal,
    this.paidThrough,
    this.klass,
    this.dueAmount,
    this.amount,
    this.billReference,
    this.cashoutAmount,
    this.fromUser,
    this.ref,
    this.rrn,
    this.otp,
    this.txnResponseCode,
  });

  String? message;
  int? gatewayIntegrationPk;
  dynamic biller;
  dynamic aggTerminal;
  String? paidThrough;
  String? klass;
  int? dueAmount;
  dynamic amount;
  int? billReference;
  dynamic cashoutAmount;
  dynamic fromUser;
  dynamic ref;
  dynamic rrn;
  String? otp;
  String? txnResponseCode;

  factory KioskTokenModelData.fromJson(Map<String, dynamic> json) =>
      KioskTokenModelData(
        message: json["message"],
        gatewayIntegrationPk: json["gateway_integration_pk"],
        biller: json["biller"],
        aggTerminal: json["agg_terminal"],
        paidThrough: json["paid_through"],
        klass: json["klass"],
        dueAmount: json["due_amount"],
        amount: json["amount"],
        billReference: json["bill_reference"],
        cashoutAmount: json["cashout_amount"],
        fromUser: json["from_user"],
        ref: json["ref"],
        rrn: json["rrn"],
        otp: json["otp"],
        txnResponseCode: json["txn_response_code"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "gateway_integration_pk": gatewayIntegrationPk,
        "biller": biller,
        "agg_terminal": aggTerminal,
        "paid_through": paidThrough,
        "klass": klass,
        "due_amount": dueAmount,
        "amount": amount,
        "bill_reference": billReference,
        "cashout_amount": cashoutAmount,
        "from_user": fromUser,
        "ref": ref,
        "rrn": rrn,
        "otp": otp,
        "txn_response_code": txnResponseCode,
      };
}

class Order {
  Order({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.collector,
    this.amountCents,
    this.shippingData,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.items,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.merchantStaffTag,
    this.apiSource,
    this.data,
  });

  int? id;
  DateTime? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  dynamic collector;
  int? amountCents;
  IngData? shippingData;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  String? merchantOrderId;
  dynamic walletNotification;
  int? paidAmountCents;
  bool? notifyUserWithEmail;
  List<Item>? items;
  String? orderUrl;
  int? commissionFees;
  int? deliveryFeesCents;
  int? deliveryVatCents;
  String? paymentMethod;
  dynamic merchantStaffTag;
  String? apiSource;
  OrderData? data;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: IngData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: OrderData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt!.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant!.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData!.toJson(),
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": List<dynamic>.from(items!.map((x) => x.toJson())),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data!.toJson(),
      };
}

class OrderData {
  OrderData();

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData();

  Map<String, dynamic> toJson() => {};
}

class Item {
  Item({
    this.name,
    this.description,
    this.amountCents,
    this.quantity,
  });

  String? name;
  String? description;
  int? amountCents;
  int? quantity;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        amountCents: json["amount_cents"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount_cents": amountCents,
        "quantity": quantity,
      };
}

class Merchant {
  Merchant({
    this.id,
    this.createdAt,
    this.phones,
    this.companyEmails,
    this.companyName,
    this.state,
    this.country,
    this.city,
    this.postalCode,
    this.street,
  });

  int? id;
  DateTime? createdAt;
  List<String>? phones;
  List<String>? companyEmails;
  String? companyName;
  String? state;
  String? country;
  String? city;
  String? postalCode;
  String? street;

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt!.toIso8601String(),
        "phones": List<dynamic>.from(phones!.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails!.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };
}

class IngData {
  IngData({
    this.id,
    this.firstName,
    this.lastName,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.city,
    this.state,
    this.country,
    this.email,
    this.phoneNumber,
    this.postalCode,
    this.extraDescription,
    this.shippingMethod,
    this.orderId,
    this.order,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? street;
  String? building;
  String? floor;
  String? apartment;
  String? city;
  String? state;
  String? country;
  String? email;
  String? phoneNumber;
  String? postalCode;
  String? extraDescription;
  String? shippingMethod;
  int? orderId;
  int? order;

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
        id: json["id"] ?? null,
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod: json["shipping_method"] ?? null,
        orderId: json["order_id"] ?? null,
        order: json["order"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? null,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod ?? null,
        "order_id": orderId ?? null,
        "order": order ?? null,
      };
}

class PaymentKeyClaims {
  PaymentKeyClaims({
    this.orderId,
    this.integrationId,
    this.exp,
    this.billingData,
    this.userId,
    this.currency,
    this.lockOrderWhenPaid,
    this.pmkIp,
    this.amountCents,
  });

  int? orderId;
  int? integrationId;
  int? exp;
  IngData? billingData;
  int? userId;
  String? currency;
  bool? lockOrderWhenPaid;
  String? pmkIp;
  int? amountCents;

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaims(
        orderId: json["order_id"],
        integrationId: json["integration_id"],
        exp: json["exp"],
        billingData: IngData.fromJson(json["billing_data"]),
        userId: json["user_id"],
        currency: json["currency"],
        lockOrderWhenPaid: json["lock_order_when_paid"],
        pmkIp: json["pmk_ip"],
        amountCents: json["amount_cents"],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId,
        "integration_id": integrationId,
        "exp": exp,
        "billing_data": billingData!.toJson(),
        "user_id": userId,
        "currency": currency,
        "lock_order_when_paid": lockOrderWhenPaid,
        "pmk_ip": pmkIp,
        "amount_cents": amountCents,
      };
}

class SourceData {
  SourceData({
    this.type,
    this.pan,
    this.subType,
  });

  String? type;
  String? pan;
  String? subType;

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        type: json["type"],
        pan: json["pan"],
        subType: json["sub_type"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "pan": pan,
        "sub_type": subType,
      };
}
