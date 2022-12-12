INSERT INTO category (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      name, description, version)
VALUES ('276094fb-a8e6-418e-8757-65470dbffd08', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Basic', 'Basic source', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('71813c8f-b171-4d40-9a0e-b0f4fc2a435b', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Binomial Distribution',
        'Binomial Distribution', '276094fb-a8e6-418e-8757-65470dbffd08', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 1,
        '71813c8f-b171-4d40-9a0e-b0f4fc2a435b', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0,
        '71813c8f-b171-4d40-9a0e-b0f4fc2a435b', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('1bcda47f-327c-4874-ab0d-2ba10dbd73c3', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blank', 'Blank',
        '276094fb-a8e6-418e-8757-65470dbffd08', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'null',
        '1bcda47f-327c-4874-ab0d-2ba10dbd73c3', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('d7d3b0c7-707e-4b66-a94c-86ee15a3fc96', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Boolean', 'Boolean',
        '276094fb-a8e6-418e-8757-65470dbffd08', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'true',
        'd7d3b0c7-707e-4b66-a94c-86ee15a3fc96', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'false',
        'd7d3b0c7-707e-4b66-a94c-86ee15a3fc96', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('279db829-f411-451d-93ab-0204cb261402', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Color', 'Color',
        '276094fb-a8e6-418e-8757-65470dbffd08', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Crimson',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Aquamarine',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Yellow',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Fuscia',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Maroon',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Red',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Green',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Teal',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Violet',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Orange',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Blue',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Khaki',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Turquoise',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Puce',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Mauv',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Goldenrod',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Pink',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Indigo',
        '279db829-f411-451d-93ab-0204cb261402', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Purple',
        '279db829-f411-451d-93ab-0204cb261402', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('dbd189e4-568c-409a-bb6a-de9483d88f35', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Custom List',
        'Custom List', '276094fb-a8e6-418e-8757-65470dbffd08', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'null',
        'dbd189e4-568c-409a-bb6a-de9483d88f35', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('ea9d4db7-133a-41ea-9bcb-275fe5fb5ceb', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Dataset Column',
        'Dataset Column', '276094fb-a8e6-418e-8757-65470dbffd08', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        'error: undefined method `id'''' for nil:NilClass', 'ea9d4db7-133a-41ea-9bcb-275fe5fb5ceb', 0);