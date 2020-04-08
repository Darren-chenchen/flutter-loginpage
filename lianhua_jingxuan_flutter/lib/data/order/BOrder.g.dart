// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'BOrder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BOrder _$BOrderFromJson(Map<String, dynamic> json) {
  return BOrder(
    cartId: json['cartId'] as String,
    type: json['type'] as String,
    flowNo: json['flowNo'] as String,
    created: json['created'] as String,
    appId: json['appId'] as String,
    expireDate: json['expireDate'] as String,
    rtlAmount: (json['rtlAmount'] as num)?.toDouble(),
    baseAmount: (json['baseAmount'] as num)?.toDouble(),
    amount: (json['amount'] as num)?.toDouble(),
    realAmount: (json['realAmount'] as num)?.toDouble(),
    remainAmount: (json['remainAmount'] as num)?.toDouble(),
    favAmount: (json['favAmount'] as num)?.toDouble(),
    freight: (json['freight'] as num)?.toDouble(),
    packageAmt: (json['packageAmt'] as num)?.toDouble(),
    memberInfo: json['memberInfo'] == null
        ? null
        : BOrderMemberInfo.fromJson(json['memberInfo'] as Map<String, dynamic>),
    lines: (json['lines'] as List)
        ?.map((e) =>
            e == null ? null : BOrderLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payments: (json['payments'] as List)
        ?.map((e) => e == null
            ? null
            : BOrderPayment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    scoreDeduction: json['scoreDeduction'] == null
        ? null
        : BScoreDeduction.fromJson(
            json['scoreDeduction'] as Map<String, dynamic>),
    coupons: (json['coupons'] as List)
        ?.map((e) =>
            e == null ? null : BOrderCoupon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    score: (json['score'] as num)?.toDouble(),
    invoice: json['invoice'] as String,
    state: json['state'] as String,
    shop: json['shop'] as String,
    shopName: json['shopName'] as String,
    checkCode: json['checkCode'] as String,
    parkingBarcode: json['parkingBarcode'] as String,
    invoiceCode: json['invoiceCode'] as String,
    printCount: json['printCount'] as int,
    saleFlowNo: json['saleFlowNo'] as String,
    deviceId: json['deviceId'] as String,
    posNo: json['posNo'] as String,
    paying: json['paying'] as bool,
    parcels: (json['parcels'] as List)
        ?.map((e) =>
            e == null ? null : BOrderParcel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    invoiceInfo: json['invoiceInfo'] == null
        ? null
        : BOrderInvoice.fromJson(json['invoiceInfo'] as Map<String, dynamic>),
    consignee: json['consignee'] == null
        ? null
        : BOrderConsignee.fromJson(json['consignee'] as Map<String, dynamic>),
    evaluated: json['evaluated'] as bool,
    rtnFlag: json['rtnFlag'] as String,
    deliveryType: json['deliveryType'] as String,
    couponAmt: (json['couponAmt'] as num)?.toDouble(),
    scoreDeductionAmt: (json['scoreDeductionAmt'] as num)?.toDouble(),
    stateFlows: (json['stateFlows'] as List)
        ?.map((e) => e == null
            ? null
            : BOrderStateFlow.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..version = json['version'] as int
    ..versionTime = json['versionTime'] as String;
}

Map<String, dynamic> _$BOrderToJson(BOrder instance) => <String, dynamic>{
      'version': instance.version,
      'versionTime': instance.versionTime,
      'cartId': instance.cartId,
      'type': instance.type,
      'flowNo': instance.flowNo,
      'created': instance.created,
      'appId': instance.appId,
      'expireDate': instance.expireDate,
      'rtlAmount': instance.rtlAmount,
      'baseAmount': instance.baseAmount,
      'amount': instance.amount,
      'realAmount': instance.realAmount,
      'remainAmount': instance.remainAmount,
      'favAmount': instance.favAmount,
      'freight': instance.freight,
      'packageAmt': instance.packageAmt,
      'memberInfo': instance.memberInfo,
      'lines': instance.lines,
      'payments': instance.payments,
      'scoreDeduction': instance.scoreDeduction,
      'coupons': instance.coupons,
      'score': instance.score,
      'invoice': instance.invoice,
      'state': instance.state,
      'shop': instance.shop,
      'shopName': instance.shopName,
      'checkCode': instance.checkCode,
      'parkingBarcode': instance.parkingBarcode,
      'invoiceCode': instance.invoiceCode,
      'printCount': instance.printCount,
      'saleFlowNo': instance.saleFlowNo,
      'deviceId': instance.deviceId,
      'posNo': instance.posNo,
      'paying': instance.paying,
      'parcels': instance.parcels,
      'invoiceInfo': instance.invoiceInfo,
      'consignee': instance.consignee,
      'evaluated': instance.evaluated,
      'rtnFlag': instance.rtnFlag,
      'deliveryType': instance.deliveryType,
      'couponAmt': instance.couponAmt,
      'scoreDeductionAmt': instance.scoreDeductionAmt,
      'stateFlows': instance.stateFlows,
    };
