import 'package:flutter_bloc/flutter_bloc.dart' show EventTransformer;
import 'package:rxdart/rxdart.dart';

mixin Transformers {
  EventTransformer<E> debounceTransformer<E>(Duration duration) {
    return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
  }
}
