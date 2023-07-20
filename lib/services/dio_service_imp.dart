import 'package:dio/dio.dart';
import 'package:movieapp/services/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyZTk5OTZhOTIzYmMzZWYxZWI3OGJkN2I1ZDZhNTcwYyIsInN1YiI6IjY0YjFjMGE4YTNiNWU2MDBlMjNmNDE3YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.COdaa6Zf__24AgdB3neRhX0fSA-W5IoKTZkykRwbQMc',
        },
      ),
    );
  }
}
