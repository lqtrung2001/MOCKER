package com.mockez.constant;

public interface GenerateConstant {
    String SPACE = " ";
    String COMMA_SPACE = ", ";
    String BACKTICK = "`";
    String TEMPLATE_CREATE_TABLE_BUILDER = """
                        CREATE TABLE `%s` (
                            `attributes`
                        );
            """;
    String TEMPLATE_INSERT_BUILDER = "INSERT INTO `%s` (%s) VALUES (/values/);\n";
}
