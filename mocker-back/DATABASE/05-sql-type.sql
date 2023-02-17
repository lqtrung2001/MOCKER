INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'CHAR',
        'It is used to specify a fixed length string that can contain numbers, letters, and special characters. Its size can be 0 to 255 characters. Default is 1.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'VARCHAR',
        'It is used to specify a variable length string that can contain numbers, letters, and special characters. Its size can be from 0 to 65535 characters.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'BINARY',
        'It is equal to CHAR() but stores binary byte strings. Its size parameter specifies the column length in the bytes. Default is 1.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'VARBINARY',
        'It is equal to VARCHAR() but stores binary byte strings. Its size parameter specifies the maximum column length in bytes.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TEXT',
        'It holds a string that can contain a maximum length of 255 characters.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TINYTEXT',
        'It holds a string with a maximum length of 255 characters.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'MEDIUMTEXT',
        'It holds a string with a maximum length of 16,777,215.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'LONGTEXT',
        'It holds a string with a maximum length of 4,294,967,295 characters.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'ENUM',
        'It is used when a string object having only one value, chosen from a list of possible values. It contains 65535 values in an ENUM list. If you insert a value that is not in the list, a blank value will be inserted.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SET',
        'It is used to specify a string that can have 0 or more values, chosen from a list of possible values. You can list up to 64 values at one time in a SET list.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'BLOB',
        'It is used for BLOBs (Binary Large Objects). It can hold up to 65,535 bytes.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'BIT',
        'It is used for a bit-value type. The number of bits per value is specified in size. Its size can be 1 to 64. The default value is 1.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'INT',
        'It is used for the integer value. Its signed range varies from -2147483648 to 2147483647 and unsigned range varies from 0 to 4294967295. The size parameter specifies the max display width that is 255.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'INTEGER',
        'It is equal to INT(size).', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'FLOAT',
        'It is used to specify a floating point number. Its size parameter specifies the total number of digits.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'DOUBLE',
        'It is a normal size floating point number. Its size parameter specifies the total number of digits.', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'DECIMAL',
        'It is used to specify a fixed point number. Its size parameter specifies the total number of digits', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'DEC',
        'It is equal to DECIMAL', 0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'BOOL',
        'It is used to specify Boolean values true and false. Zero is considered as false, and nonzero values are considered as true.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'DATE',
        'It is used to specify date format YYYY-MM-DD. Its supported range is from ''1000-01-01'' to ''9999-12-31''.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'DATETIME',
        'It is used to specify date and time combination. Its format is YYYY-MM-DD hh:mm:ss. Its supported range is from ''1000-01-01 00:00:00'' to 9999-12-31 23:59:59''.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TIMESTAMP',
        'It is used to specify the timestamp. Its value is stored as the number of seconds since the Unix epoch(''1970-01-01 00:00:00'' UTC). Its format is YYYY-MM-DD hh:mm:ss. Its supported range is from ''1970-01-01 00:00:01'' UTC to ''2038-01-09 03:14:07'' UTC.',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TIME',
        'It is used to specify the time format. Its format is hh:mm:ss. Its supported range is from ''-838:59:59'' to ''838:59:59''',
        0);
INSERT INTO sql_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      code, description, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YEAR',
        'It is used to specify a year in four-digit format. Values allowed in four digit format from 1901 to 2155, and 0000.',
        0);
