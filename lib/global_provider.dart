import 'package:riverpod/riverpod.dart';
import 'package:mobile_dev/service/addtask.dart';

final addtaskProvider = Provider((ref) => addtask(ref));
