// Copyright (c) 2014, the tuple project authors. Please see the AUTHORS
// file for details. All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

/// # Tuple data structure
///
/// - [Tuple2], [Tuple3]...
///
/// ## Usage example
///
/// ```dart
/// const t = const Tuple2<String, int>('a', 10);
///
/// print(t.item1); // prints 'a'
/// print(t.item2); // prints '10'
/// ```
///
/// ```dart
/// const t1 = const Tuple2<String, int>('a', 10);
/// final t2 = t1.withItem1('c');
/// // t2 is a new [Tuple2] object with item1 is 'c' and item2 is 10.
/// ```
library tuple;

import 'package:quiver/core.dart';

/// Represents a 2-tuple, or pair.
class Tuple2<T1, T2> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Creates a new tuple value with the specified items.
  const Tuple2(this.item1, this.item2);

  /// Create a new tuple value with the specified list [items].
  factory Tuple2.fromList(List items) {
    if (items.length != 2) {
      throw ArgumentError('items must have length 2');
    }

    return Tuple2<T1, T2>(items[0] as T1, items[1] as T2);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple2<T1, T2> withItem1(T1 v) {
    return Tuple2<T1, T2>(v, item2);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple2<T1, T2> withItem2(T2 v) {
    return Tuple2<T1, T2>(item1, v);
  }

  /// Creates a [List] containing the items of this [Tuple2].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2], growable: growable);

  @override
  String toString() => '[$item1, $item2]';

  @override
  bool operator ==(other) =>
      other is Tuple2 && other.item1 == item1 && other.item2 == item2;

  @override
  int get hashCode => hash2(item1.hashCode, item2.hashCode);
}

/// Represents a 3-tuple, or triple.
class Tuple3<T1, T2, T3> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Creates a new tuple value with the specified items.
  const Tuple3(this.item1, this.item2, this.item3);

  /// Create a new tuple value with the specified list [items].
  factory Tuple3.fromList(List items) {
    if (items.length != 3) {
      throw ArgumentError('items must have length 3');
    }

    return Tuple3<T1, T2, T3>(items[0] as T1, items[1] as T2, items[2] as T3);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple3<T1, T2, T3> withItem1(T1 v) {
    return Tuple3<T1, T2, T3>(v, item2, item3);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple3<T1, T2, T3> withItem2(T2 v) {
    return Tuple3<T1, T2, T3>(item1, v, item3);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple3<T1, T2, T3> withItem3(T3 v) {
    return Tuple3<T1, T2, T3>(item1, item2, v);
  }

  /// Creates a [List] containing the items of this [Tuple3].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3], growable: growable);

  @override
  String toString() => '[$item1, $item2, $item3]';

  @override
  bool operator ==(other) =>
      other is Tuple3 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3;

  @override
  int get hashCode => hash3(item1.hashCode, item2.hashCode, item3.hashCode);
}

/// Represents a 4-tuple, or quadruple.
class Tuple4<T1, T2, T3, T4> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Creates a new tuple value with the specified items.
  const Tuple4(this.item1, this.item2, this.item3, this.item4);

  /// Create a new tuple value with the specified list [items].
  factory Tuple4.fromList(List items) {
    if (items.length != 4) {
      throw ArgumentError('items must have length 4');
    }

    return Tuple4<T1, T2, T3, T4>(
        items[0] as T1, items[1] as T2, items[2] as T3, items[3] as T4);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple4<T1, T2, T3, T4> withItem1(T1 v) {
    return Tuple4<T1, T2, T3, T4>(v, item2, item3, item4);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple4<T1, T2, T3, T4> withItem2(T2 v) {
    return Tuple4<T1, T2, T3, T4>(item1, v, item3, item4);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple4<T1, T2, T3, T4> withItem3(T3 v) {
    return Tuple4<T1, T2, T3, T4>(item1, item2, v, item4);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple4<T1, T2, T3, T4> withItem4(T4 v) {
    return Tuple4<T1, T2, T3, T4>(item1, item2, item3, v);
  }

  /// Creates a [List] containing the items of this [Tuple4].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3, item4], growable: growable);

  @override
  String toString() => '[$item1, $item2, $item3, $item4]';

  @override
  bool operator ==(other) =>
      other is Tuple4 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4;

  @override
  int get hashCode =>
      hash4(item1.hashCode, item2.hashCode, item3.hashCode, item4.hashCode);
}

/// Represents a 5-tuple, or quintuple.
class Tuple5<T1, T2, T3, T4, T5> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Creates a new tuple value with the specified items.
  const Tuple5(this.item1, this.item2, this.item3, this.item4, this.item5);

  /// Create a new tuple value with the specified list [items].
  factory Tuple5.fromList(List items) {
    if (items.length != 5) {
      throw ArgumentError('items must have length 5');
    }

    return Tuple5<T1, T2, T3, T4, T5>(items[0] as T1, items[1] as T2,
        items[2] as T3, items[3] as T4, items[4] as T5);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple5<T1, T2, T3, T4, T5> withItem1(T1 v) {
    return Tuple5<T1, T2, T3, T4, T5>(v, item2, item3, item4, item5);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple5<T1, T2, T3, T4, T5> withItem2(T2 v) {
    return Tuple5<T1, T2, T3, T4, T5>(item1, v, item3, item4, item5);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple5<T1, T2, T3, T4, T5> withItem3(T3 v) {
    return Tuple5<T1, T2, T3, T4, T5>(item1, item2, v, item4, item5);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple5<T1, T2, T3, T4, T5> withItem4(T4 v) {
    return Tuple5<T1, T2, T3, T4, T5>(item1, item2, item3, v, item5);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple5<T1, T2, T3, T4, T5> withItem5(T5 v) {
    return Tuple5<T1, T2, T3, T4, T5>(item1, item2, item3, item4, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3, item4, item5], growable: growable);

  @override
  String toString() => '[$item1, $item2, $item3, $item4, $item5]';

  @override
  bool operator ==(other) =>
      other is Tuple5 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode
      ]);
}

/// Represents a 6-tuple, or sextuple.
class Tuple6<T1, T2, T3, T4, T5, T6> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Returns the sixth item of the tuple
  final T6 item6;

  /// Creates a new tuple value with the specified items.
  const Tuple6(
      this.item1, this.item2, this.item3, this.item4, this.item5, this.item6);

  /// Create a new tuple value with the specified list [items].
  factory Tuple6.fromList(List items) {
    if (items.length != 6) {
      throw ArgumentError('items must have length 6');
    }

    return Tuple6<T1, T2, T3, T4, T5, T6>(items[0] as T1, items[1] as T2,
        items[2] as T3, items[3] as T4, items[4] as T5, items[5] as T6);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, T6> withItem1(T1 v) {
    return Tuple6<T1, T2, T3, T4, T5, T6>(v, item2, item3, item4, item5, item6);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, T6> withItem2(T2 v) {
    return Tuple6<T1, T2, T3, T4, T5, T6>(item1, v, item3, item4, item5, item6);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, T6> withItem3(T3 v) {
    return Tuple6<T1, T2, T3, T4, T5, T6>(item1, item2, v, item4, item5, item6);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, T6> withItem4(T4 v) {
    return Tuple6<T1, T2, T3, T4, T5, T6>(item1, item2, item3, v, item5, item6);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, T6> withItem5(T5 v) {
    return Tuple6<T1, T2, T3, T4, T5, T6>(item1, item2, item3, item4, v, item6);
  }

  /// Returns a tuple with the sixth item set to the specified value.
  Tuple6<T1, T2, T3, T4, T5, T6> withItem6(T6 v) {
    return Tuple6<T1, T2, T3, T4, T5, T6>(item1, item2, item3, item4, item5, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3, item4, item5, item6], growable: growable);

  @override
  String toString() => '[$item1, $item2, $item3, $item4, $item5, $item6]';

  @override
  bool operator ==(other) =>
      other is Tuple6 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode,
        item6.hashCode
      ]);
}

/// Represents a 7-tuple, or septuple.
class Tuple7<T1, T2, T3, T4, T5, T6, T7> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Returns the sixth item of the tuple
  final T6 item6;

  /// Returns the seventh item of the tuple
  final T7 item7;

  /// Creates a new tuple value with the specified items.
  const Tuple7(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7);

  /// Create a new tuple value with the specified list [items].
  factory Tuple7.fromList(List items) {
    if (items.length != 7) {
      throw ArgumentError('items must have length 7');
    }

    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        items[0] as T1,
        items[1] as T2,
        items[2] as T3,
        items[3] as T4,
        items[4] as T5,
        items[5] as T6,
        items[6] as T7);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem1(T1 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        v, item2, item3, item4, item5, item6, item7);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem2(T2 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        item1, v, item3, item4, item5, item6, item7);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem3(T3 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        item1, item2, v, item4, item5, item6, item7);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem4(T4 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        item1, item2, item3, v, item5, item6, item7);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem5(T5 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        item1, item2, item3, item4, v, item6, item7);
  }

  /// Returns a tuple with the sixth item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem6(T6 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        item1, item2, item3, item4, item5, v, item7);
  }

  /// Returns a tuple with the seventh item set to the specified value.
  Tuple7<T1, T2, T3, T4, T5, T6, T7> withItem7(T7 v) {
    return Tuple7<T1, T2, T3, T4, T5, T6, T7>(
        item1, item2, item3, item4, item5, item6, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3, item4, item5, item6, item7],
          growable: growable);

  @override
  String toString() =>
      '[$item1, $item2, $item3, $item4, $item5, $item6, $item7]';

  @override
  bool operator ==(other) =>
      other is Tuple7 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode,
        item6.hashCode,
        item7.hashCode
      ]);
}

/// Represents a 8-tuple.
class Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Returns the sixth item of the tuple
  final T6 item6;

  /// Returns the seventh item of the tuple
  final T7 item7;

  /// Returns the eight item of the tuple
  final T8 item8;

  /// Creates a new tuple value with the specified items.
  const Tuple8(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8);

  /// Create a new tuple value with the specified list [items].
  factory Tuple8.fromList(List items) {
    if (items.length != 8) {
      throw ArgumentError('items must have length 8');
    }

    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        items[0] as T1,
        items[1] as T2,
        items[2] as T3,
        items[3] as T4,
        items[4] as T5,
        items[5] as T6,
        items[6] as T7,
        items[7] as T8);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem1(T1 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        v, item2, item3, item4, item5, item6, item7, item8);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem2(T2 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, v, item3, item4, item5, item6, item7, item8);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem3(T3 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, item2, v, item4, item5, item6, item7, item8);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem4(T4 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, item2, item3, v, item5, item6, item7, item8);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem5(T5 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, item2, item3, item4, v, item6, item7, item8);
  }

  /// Returns a tuple with the sixth item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem6(T6 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, item2, item3, item4, item5, v, item7, item8);
  }

  /// Returns a tuple with the seventh item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem7(T7 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, item2, item3, item4, item5, item6, v, item8);
  }

  /// Returns a tuple with the eight item set to the specified value.
  Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> withItem8(T8 v) {
    return Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>(
        item1, item2, item3, item4, item5, item6, item7, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3, item4, item5, item6, item7, item8],
          growable: growable);

  @override
  String toString() =>
      '[$item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8]';

  @override
  bool operator ==(other) =>
      other is Tuple8 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7 &&
      other.item8 == item8;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode,
        item6.hashCode,
        item7.hashCode,
        item8.hashCode
      ]);
}

/// Represents a 9-tuple.
class Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Returns the sixth item of the tuple
  final T6 item6;

  /// Returns the seventh item of the tuple
  final T7 item7;

  /// Returns the eight item of the tuple
  final T8 item8;

  /// Returns the ninth item of the tuple
  final T9 item9;

  /// Creates a new tuple value with the specified items.
  const Tuple9(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8, this.item9);

  /// Create a new tuple value with the specified list [items].
  factory Tuple9.fromList(List items) {
    if (items.length != 9) {
      throw ArgumentError('items must have length 9');
    }

    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        items[0] as T1,
        items[1] as T2,
        items[2] as T3,
        items[3] as T4,
        items[4] as T5,
        items[5] as T6,
        items[6] as T7,
        items[7] as T8,
        items[8] as T9);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem1(T1 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        v, item2, item3, item4, item5, item6, item7, item8, item9);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem2(T2 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, v, item3, item4, item5, item6, item7, item8, item9);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem3(T3 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, v, item4, item5, item6, item7, item8, item9);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem4(T4 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, item3, v, item5, item6, item7, item8, item9);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem5(T5 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, item3, item4, v, item6, item7, item8, item9);
  }

  /// Returns a tuple with the sixth item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem6(T6 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, item3, item4, item5, v, item7, item8, item9);
  }

  /// Returns a tuple with the seventh item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem7(T7 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, item3, item4, item5, item6, v, item8, item9);
  }

  /// Returns a tuple with the eigth item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem8(T8 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, item3, item4, item5, item6, item7, v, item9);
  }

  /// Returns a tuple with the ninth item set to the specified value.
  Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> withItem9(T9 v) {
    return Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
        item1, item2, item3, item4, item5, item6, item7, item8, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) =>
      List.from([item1, item2, item3, item4, item5, item6, item7, item8, item9],
          growable: growable);

  @override
  String toString() =>
      '[$item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8, $item9]';

  @override
  bool operator ==(other) =>
      other is Tuple9 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7 &&
      other.item8 == item8 &&
      other.item9 == item9;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode,
        item6.hashCode,
        item7.hashCode,
        item8.hashCode,
        item9.hashCode
      ]);
}

/// Represents a 10-tuple.
class Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Returns the sixth item of the tuple
  final T6 item6;

  /// Returns the seventh item of the tuple
  final T7 item7;

  /// Returns the eight item of the tuple
  final T8 item8;

  /// Returns the ninth item of the tuple
  final T9 item9;

  /// Returns the tenth item of the tuple
  final T10 item10;

  /// Creates a new tuple value with the specified items.
  const Tuple10(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8, this.item9, this.item10);

  /// Create a new tuple value with the specified list [items].
  factory Tuple10.fromList(List items) {
    if (items.length != 10) {
      throw ArgumentError('items must have length 10');
    }

    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        items[0] as T1,
        items[1] as T2,
        items[2] as T3,
        items[3] as T4,
        items[4] as T5,
        items[5] as T6,
        items[6] as T7,
        items[7] as T8,
        items[8] as T9,
        items[9] as T10);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem1(T1 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        v, item2, item3, item4, item5, item6, item7, item8, item9, item10);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem2(T2 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, v, item3, item4, item5, item6, item7, item8, item9, item10);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem3(T3 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, v, item4, item5, item6, item7, item8, item9, item10);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem4(T4 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, v, item5, item6, item7, item8, item9, item10);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem5(T5 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, item4, v, item6, item7, item8, item9, item10);
  }

  /// Returns a tuple with the sixth item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem6(T6 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, item4, item5, v, item7, item8, item9, item10);
  }

  /// Returns a tuple with the seventh item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem7(T7 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, item4, item5, item6, v, item8, item9, item10);
  }

  /// Returns a tuple with the eigth item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem8(T8 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, item4, item5, item6, item7, v, item9, item10);
  }

  /// Returns a tuple with the ninth item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem9(T9 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, item4, item5, item6, item7, item8, v, item10);
  }

  /// Returns a tuple with the tenth item set to the specified value.
  Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> withItem10(T10 v) {
    return Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
        item1, item2, item3, item4, item5, item6, item7, item8, item9, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) => List.from(
      [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10],
      growable: growable);

  @override
  String toString() =>
      '[$item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8, $item9, $item10]';

  @override
  bool operator ==(other) =>
      other is Tuple10 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7 &&
      other.item8 == item8 &&
      other.item9 == item9 &&
      other.item10 == item10;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode,
        item6.hashCode,
        item7.hashCode,
        item8.hashCode,
        item9.hashCode,
        item10.hashCode
      ]);
}

/// Represents a 11-tuple.
class Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> {
  /// Returns the first item of the tuple
  final T1 item1;

  /// Returns the second item of the tuple
  final T2 item2;

  /// Returns the third item of the tuple
  final T3 item3;

  /// Returns the fourth item of the tuple
  final T4 item4;

  /// Returns the fifth item of the tuple
  final T5 item5;

  /// Returns the sixth item of the tuple
  final T6 item6;

  /// Returns the seventh item of the tuple
  final T7 item7;

  /// Returns the eight item of the tuple
  final T8 item8;

  /// Returns the ninth item of the tuple
  final T9 item9;

  /// Returns the tenth item of the tuple
  final T10 item10;

  /// Returns the eleventh item of the tuple
  final T11 item11;

  /// Creates a new tuple value with the specified items.
  const Tuple11(this.item1, this.item2, this.item3, this.item4, this.item5,
      this.item6, this.item7, this.item8, this.item9, this.item10, this.item11);

  /// Create a new tuple value with the specified list [items].
  factory Tuple11.fromList(List items) {
    if (items.length != 11) {
      throw ArgumentError('items must have length 11');
    }

    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(
        items[0] as T1,
        items[1] as T2,
        items[2] as T3,
        items[3] as T4,
        items[4] as T5,
        items[5] as T6,
        items[6] as T7,
        items[7] as T8,
        items[8] as T9,
        items[9] as T10,
        items[10] as T11);
  }

  /// Returns a tuple with the first item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem1(T1 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(v, item2,
        item3, item4, item5, item6, item7, item8, item9, item10, item11);
  }

  /// Returns a tuple with the second item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem2(T2 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, v,
        item3, item4, item5, item6, item7, item8, item9, item10, item11);
  }

  /// Returns a tuple with the third item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem3(T3 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        v, item4, item5, item6, item7, item8, item9, item10, item11);
  }

  /// Returns a tuple with the fourth item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem4(T4 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, v, item5, item6, item7, item8, item9, item10, item11);
  }

  /// Returns a tuple with the fifth item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem5(T5 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, v, item6, item7, item8, item9, item10, item11);
  }

  /// Returns a tuple with the sixth item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem6(T6 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, item5, v, item7, item8, item9, item10, item11);
  }

  /// Returns a tuple with the seventh item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem7(T7 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, item5, item6, v, item8, item9, item10, item11);
  }

  /// Returns a tuple with the eigth item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem8(T8 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, item5, item6, item7, v, item9, item10, item11);
  }

  /// Returns a tuple with the ninth item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem9(T9 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, item5, item6, item7, item8, v, item10, item11);
  }

  /// Returns a tuple with the tenth item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem10(T10 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, item5, item6, item7, item8, item9, v, item11);
  }

  /// Returns a tuple with the eleventh item set to the specified value.
  Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> withItem11(T11 v) {
    return Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(item1, item2,
        item3, item4, item5, item6, item7, item8, item9, item10, v);
  }

  /// Creates a [List] containing the items of this [Tuple5].
  ///
  /// The elements are in item order. The list is variable-length
  /// if [growable] is true.
  List toList({bool growable = false}) => List.from([
        item1,
        item2,
        item3,
        item4,
        item5,
        item6,
        item7,
        item8,
        item9,
        item10,
        item11
      ], growable: growable);

  @override
  String toString() =>
      '[$item1, $item2, $item3, $item4, $item5, $item6, $item7, $item8, $item9, $item10, $item11]';

  @override
  bool operator ==(other) =>
      other is Tuple11 &&
      other.item1 == item1 &&
      other.item2 == item2 &&
      other.item3 == item3 &&
      other.item4 == item4 &&
      other.item5 == item5 &&
      other.item6 == item6 &&
      other.item7 == item7 &&
      other.item8 == item8 &&
      other.item9 == item9 &&
      other.item10 == item10 &&
      other.item11 == item11;

  @override
  int get hashCode => hashObjects([
        item1.hashCode,
        item2.hashCode,
        item3.hashCode,
        item4.hashCode,
        item5.hashCode,
        item6.hashCode,
        item7.hashCode,
        item8.hashCode,
        item9.hashCode,
        item10.hashCode,
        item1.hashCode
      ]);
}
