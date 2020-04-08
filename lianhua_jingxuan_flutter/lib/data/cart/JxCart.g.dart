// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'JxCart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JxCart _$JxCartFromJson(Map<String, dynamic> json) {
  return JxCart(
    posNo: json['posNo'] as String,
    cartId: json['cartId'] as String,
    couponAmt: (json['couponAmt'] as num)?.toDouble(),
    rtlAmount: (json['rtlAmount'] as num)?.toDouble(),
    baseAmount: (json['baseAmount'] as num)?.toDouble(),
    amount: (json['amount'] as num)?.toDouble(),
    realAmount: (json['realAmount'] as num)?.toDouble(),
    favAmount: (json['favAmount'] as num)?.toDouble(),
    lines: (json['lines'] as List)
        ?.map((e) =>
            e == null ? null : JxCartLine.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    payments: (json['payments'] as List)
        ?.map((e) => e == null
            ? null
            : JxCartPayment.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    coupons: (json['coupons'] as List)
        ?.map((e) =>
            e == null ? null : JxCartCoupon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$JxCartToJson(JxCart instance) => <String, dynamic>{
      'posNo': instance.posNo,
      'cartId': instance.cartId,
      'couponAmt': instance.couponAmt,
      'rtlAmount': instance.rtlAmount,
      'baseAmount': instance.baseAmount,
      'amount': instance.amount,
      'realAmount': instance.realAmount,
      'favAmount': instance.favAmount,
      'lines': instance.lines,
      'payments': instance.payments,
      'coupons': instance.coupons,
    };
