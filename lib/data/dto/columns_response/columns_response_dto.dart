import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/comment/comment_dto.dart';
import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
import 'package:test_ex1/domain/models/columns_response.dart';

part 'columns_response_dto.freezed.dart';
part 'columns_response_dto.g.dart';

@freezed
sealed class ColumnsResponseDTO with _$ColumnsResponseDTO {
  const factory ColumnsResponseDTO({
    required List<ColumnDTO> data,
    required CursorDTO cursor,
  }) = _ColumnsResponseDTO;

  factory ColumnsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ColumnsResponseDTOFromJson(json);
}

extension ColumnsResponseMapper on ColumnsResponseDTO {
  ColumnsResponseModel toModel() => ColumnsResponseModel(
    columnsList: data.map((v) => v.toModel()).toList(),
    cursor: cursor.toModel(),
  );
}
