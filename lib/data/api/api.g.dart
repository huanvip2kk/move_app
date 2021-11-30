// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GetApi implements GetApi {
  _GetApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://phimapi.000webhostapp.com/api/controller';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PopularModel> getPopular() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PopularModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/readPopular.php',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PopularModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TrendingModel> getTrending() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TrendingModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/readTrending.php',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TrendingModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SliderModel> getSlider() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SliderModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/readSlider.php',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SliderModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MaybeYouWantToSeeModel> getMaybeYouWantToSee() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MaybeYouWantToSeeModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/readMayBeYouWantToSee.php',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MaybeYouWantToSeeModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
