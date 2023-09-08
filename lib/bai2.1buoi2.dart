import 'package:flutter/material.dart';

void main(List<String> args) {
  /*Ví dụ dưới đây có 3 lỗi. Hãy tìm và sửa hết 3 lỗi này. Nhớ đọc ví dụ về ... nhé mọi người.*/
  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  Map<dynamic, List<dynamic>?>? map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);
  //Vì string? là nullable nên e thêm !
  //Error: The argument type 'String?' can't be assigned to the parameter type 'String' because 'String?' is nullable and 'String' isn't.
  //('!').dartunchecked_use_of_nullable_value
  List<int> arrsToInt = arrs.map((e) => int.parse(e!)).toList();
  map["second"] = arrsToInt;
  //  'List' is from 'dart:core'.
  //Try calling using ?. instead.
  // Error: Method 'sublist' cannot be called on 'List<String>?' because it is potentially null.
  //bởi nó kêu thử nên e đã thêm ? sau last lí do là dùng phương pháp nông dân ;)
  map["third"] = sMap.values.last?.sublist(1);
  /*Ví dụ về ...
  Cách sử dụng: [...Iterable]
  Khi sử dụng ... sẽ lấy toàn bộ phần tử của Iterable add vào trong []
  ví dụ: 
  var a = [1,2,3];
  var b = [4,5,6];
  var result = [...a, ...b] // sẽ cho ra result = [1,2,3,4,5,6]*/
  map["fourth"] = [
    ...arrs.map((e) => int.parse(e!)).where((e) => e % 2 == 1),
    ...arrs.where((e) => e == null),
    //e đã thử thêm ? nhưng ko mất dấu lỗi nên e thử ! nhưng ko chạy ra kết quả
    ...sMap[3]!.sublist(0, 2)
  ];

  print(map);
}
//The webOnlyWarmupEngine API is deprecated and will be removed in a future release. Please use `bootstrapEngine` from `dart:ui_web` instead.
//Error: Unexpected null value.
//dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 294:49       throw_
//dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/operations.dart 855:63   nullCheck
//packages/bai1/baitapbuoi2.dart 29:35                                               <fn>
//dart-sdk/lib/internal/iterable.dart 415:31 
//dart-sdk/lib/internal/iterable.dart 440:22                                         moveNext
//dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/operations.dart 1080:20  next
//dart-sdk/lib/_internal/js_dev_runtime/patch/core_patch.dart 555:14                 of
//packages/bai1/baitapbuoi2.dart 31:28                                               main
//web_entrypoint.dart 22:33                                                          <fn>
//lib/ui_web/ui_web/initialization.dart 41:15                                        <fn>
//dart-sdk/lib/_internal/js_dev_runtime/patch/async_patch.dart 45:50 
//dart-sdk/lib/async/future_impl.dart 840:44                                         handleValueCallback
//dart-sdk/lib/async/future_impl.dart 869:13                                         _propagateToListeners
//dart-sdk/lib/async/future_impl.dart 641:5                                          [_completeWithValue]
//dart-sdk/lib/async/future_impl.dart 715:7                                          callback
//dart-sdk/lib/async/schedule_microtask.dart 40:11                                   _microtaskLoop
//dart-sdk/lib/async/schedule_microtask.dart 49:5                                    _startMicrotaskLoop
//dart-sdk/lib/_internal/js_dev_runtime/patch/async_patch.dart 181:15                <fn>

