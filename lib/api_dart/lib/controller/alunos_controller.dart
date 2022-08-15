import 'package:learn_flutter/api_dart/lib/repositories/alunos_repository.dart';

class AlunosController {

  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();
    alunos.forEach(print);
  }
}