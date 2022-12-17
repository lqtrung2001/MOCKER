INSERT INTO category (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      name, description, version)
VALUES ('b124415b-ed6f-4d05-afad-3587832b0eb7', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Car', 'Car source', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES ('fed3f9dc-500b-4847-b273-43745ce9f41a', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Car VIN', 'Car VIN',
        'b124415b-ed6f-4d05-afad-3587832b0eb7', 0);

INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAAN37491N875823',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA6A0C58DD732516',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUNF78P18A610488',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGVAFR0AA238869',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AN0NW3DN708010',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UMCN93442L600700',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPK7C54BA620966',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CDXJG7FH646425',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5LMJJ3H58CE925239',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA1CBXBL407627',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXKS4C51E0977400',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FAHP2DW2CG073395',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD28268H912173',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEX1CM6DK464956',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYEC63T82R624997',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T2BK1BA9FC318076',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DJ1ED9B0310525',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BF3EKXBU968410',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AE2KP9F9210441',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G61M5S33E9204983',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1HGCP2E74CA397061',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AA0CC7AN030489',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1LNHL9FT5FG910271',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3CCBCG1DN353921',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDNG9FBXCA791706',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1WMAFP0EA674525',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2B3CA5CT8AH081602',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2LMDJ6JK6BB809313',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5NPDH4AE7DH532463',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5XYKT3A1XCG312141',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABN73483P879807',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFAD02AX5G237240',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GU5GV2C9121605',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GD5GRXCF470067',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CL959X4C501609',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FA6P0G71E5707925',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR1NB6BC122675',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AD0CU0AC481078',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBADT53433C704276',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBG78E36A571933',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C4PDCBB6CT275494',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUXL58E15A788689',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1AZ4EH6EM650437',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBS3U9C52FP492827',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C6RD7KP6CS618471',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19XFB2F5XDE899658',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKH68DX1A691588',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDGF4HB5CF505047',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C6RD7PT2CS164841',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBSDX9C51CE418866',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUMFBFL2DN177183',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA4B3C58FD769929',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV1672MK1D2544671',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWB7C58AP457777',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3EEJ2BR759515',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5YMGZ0C59DL397991',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDBT4K38CL015671',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYUCCEF6AR444224',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AA0EJ0FN942805',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBSBR93466P167618',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4A4AP3AU8FE712070',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FBNE3BL8AD003787',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73M3HL4AG500988',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUVC68EX5A113940',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS4PKJ2FR207189',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CN7AP5FL968080',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ2KR8CT955895',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWC3C53AP538174',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6KY54931U456952',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0ND4FN783344',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1BA0NC5FN188644',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUWC28N621527413',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDJEGXFC041489',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDHAG3CC965766',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1AV7ARXFM375989',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B1G53EN480752',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'VNKJTUD35FA571162',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D7JB1EP2BG544031',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKD78P09A414200',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GAKVAED6CJ103094',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAUN93599V058247',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1BY74L47D824370',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP54K01U995781',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C4JRGAG8DR665710',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUVT54B84N089067',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALSF2D49BA973691',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTEBU4BF2AK032942',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMCU0C79CK658864',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1WGBFP9EA380893',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKA83569C402092',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUSGAFC7CN260122',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAEV33425K147999',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCFAFR2BA140486',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UYA42763A884981',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAVB17546N521142',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKD78PX7A035203',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP54K12U769802',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKF98E87A891359',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1LGAFEXCD668994',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DP8E30C0974146',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAEH73405C454869',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D4PT2GK1BW008345',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHDB8AE2AU317949',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDF78E95A328802',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1AZ4EH7DM855568',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1NC2MF2E0223171',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DG8E35E0799377',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1VWAH7A39EC470707',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDGAFL4EA481471',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6YX36D785944910',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3CDFCA9DD607946',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKG98E46A380436',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AS5S36F0383263',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AD0CU5CC634928',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPM73549E126930',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUARL48H59K831613',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD2H44CH445376',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBCR73WX9C068042',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTFW1E89AK614612',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CA5CG2BH602613',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DV1EP6E0015613',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1DGAFE7BD962601',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULC68E35A427596',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWGD7AJ3EW432766',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA0FBXBL326164',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGGAFC9CN025940',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1BY0AR7AM805876',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWV1C58AP698467',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKGBFB4BN717013',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HR57Y26U654058',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VWKX7AJ7AM042911',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GT5GVXC9840569',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4USBT53453L690644',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXZW0C59C0853075',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AL2AP4AC666481',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAFAFL3CA270491',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWAN7AN7EE872534',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AY5S33F0584648',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWC33537P876098',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1WKBFP4CA378609',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDDJ7CB6BA859536',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1YD54B04N420344',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DG577690807300',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPL3C54AA746667',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AA0CC2BN491536',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEX1C80AF472459',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1WMAFE0BD250562',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUUL98EX7A999595',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AF5MR2BT211862',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'VNKJTUD34FA446623',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS4CEF9BR486005',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK6AM292052',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWAA7AH1BV150462',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T1BURHE5EC158736',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUADUAFG0AN549236',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPN73509A015196',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUMR94E38N344032',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBS3R9C53FF998996',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4A4AP3AU5FE956369',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXWX7C56F0713076',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DS8ED5B0213750',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR1NB1AC613766',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DP1E37C0267553',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AE5S31E0213561',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSW2A50AE008274',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CN7AP5DL929728',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1B3CB8HB7BD597110',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D4SD6GT5BC721340',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C63D3HL2CG962969',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYA6C55FD163817',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JHMZE2H39BS091858',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C4PDDEG9FT908751',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AB7AP9EN374609',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DF8E57E0580957',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1HGCR2E70EA631158',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDG98E56A812881',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HR54K72U176584',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AP5SX9F0952191',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKE3C55DE169682',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHHT6KD4EU027579',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1AV74L79D618080',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKE5C58CJ365522',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFFBCBD9AG044854',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5NPEB4AC6EH418881',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J6TF1H35FL044075',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B9C51FF314052',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBDR33W37C224688',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GTU2YEJ4CG312155',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUARL48H47K475104',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6FE4CM876056',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP52K63U059637',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU4FAFR1CA446357',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GC5G30EF658260',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J8TB4H33EL255391',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AF0KX0FN965902',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GAKRBED3CJ963609',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBASP4C54AC362557',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR2MM9EC124062',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1DMAFP5EA618121',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '55SWF4JB2FU130550',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4WS52J841257209',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULFAFR9AA879160',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AA5RA8E0810304',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GKS1CKJ4FR712274',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEW1CM2DK270430',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNALN4D75E5837721',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5LMJJ2H5XAE864645',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ1FY8DW921726',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DF5EY6B0057742',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP52K144096385',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BD1EB0DU339462',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UMDU93447L859492',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR2MM3DC227119',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AF0LY1EN707460',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUR2AFD4EN088642',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DV5EP0A0275233',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXZW0C53BL078222',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD18926H786379',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA76557A811437',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4CW54K914051569',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDJTUD32ED635146',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1LFAFP3EA516807',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULT54B83N312603',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAXA5C55ED582223',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHCT4AEXEU665196',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNAFU6A29B5586587',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4DC538X5S756422',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AF5MR3DT112325',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B5C50FP130143',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CE2CP1FL520581',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHBF1D24F5198620',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DS1E31C0481128',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DS5E31C0992250',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4DB76621S354803',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VWKX7AJXAM352499',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUXD38J991888388',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKG94F66N160741',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANV13598B052552',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAHL83506D144789',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0NCXEN045229',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AD0CUXFN056852',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5FNYF3H31FB048912',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYG6C54FD700661',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTFW1E86AF194834',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJK1FT2FE632248',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VW4A7AT3DM723809',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWED7AJ5BW564429',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHHT6KD4CU773687',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N6CM0KN1DK877859',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'VNKJTUD34FA346361',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C63D3ML8CG227175',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKH98E06A158876',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTNS1EW1AD952113',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KL4CJHSB2DB229369',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYUCHEF1AR525113',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJU1K56AE642369',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBG78E26A014009',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAURVAFD7CN527594',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSW2B59AE352409',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BF1FK3EU604918',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CCADT1CH268767',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AE2KP5B9462603',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JHMZE2H74ES885724',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AT2MK5EC123247',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73M3CL2BG074209',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHGBFC4DN353858',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHEC4A48EA483563',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHF78P29A393760',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUVT54B74N956474',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAEN334X4E599843',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAF48H39K468775',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHDL5EF1F5348290',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBB7ZH9BC447998',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DJ1ED4B0731245',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VWJP7AT6CM472770',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T3BA3BB1AU758318',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWF3D52AE209984',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0NC3CN529689',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUAW2BFC5EN760312',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1B3CB9HAXAD763910',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBB7ZHXDC850200',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GTN1TEH0FZ022278',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3BC2FB4BN731951',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWX3B5XAE124746',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73M4HL0BG956090',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBADS43492G779116',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C4PDCDG3FT226511',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2FMDK4JC7AB719895',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWW3CY6AE771544',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKF3C56BE939267',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VWPG3AG5AM692744',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWED7AJ4DW536611',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGEF9BP1FD074947',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BD1FK7EU222025',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXWX7C57E0808244',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUSG74F59N511812',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA0FB8BL653579',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1CGBFE1ED957478',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AD0CU8BC567904',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDGAFL8EA896017',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J6TF1H59DL919480',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AE2KP8B9593525',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GALRCED1AJ535190',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VWML7AJ8EM817680',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D7JV1EP5AG834625',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1BY1AR0FM749454',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAVM5C55FV158325',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD2H22AH676630',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2B3CJ7DJ5BH469817',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ2KR0DT957741',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBET9ZA9F8165801',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J8TB3H50DL519435',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJK1F51BE367107',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5FNYF3H48FB058359',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYUKFEJ1AR445256',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALVP2BG0FH470247',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5TDDCRFH7FS467545',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUPFAFM9BA161549',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CCAKG9FH029347',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWW3B54AE990445',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C4RRGAG5DR995498',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GADS13S772761462',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUJT68EX5A150260',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AB5SA2E0089663',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP57247U191973',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUEFAFL4FA318375',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JA32U2FUXEU711531',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4DC548X2C147416',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDHAG3CC372585',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHFAFL7BN524175',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1CFAFP5CA866761',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G61S5S36F9148349',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUUL78E97A368812',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J8TB4H3XGL969246',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA75618A863319',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUSC28NX21950266',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1AY94L28D036504',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHF78P17A261117',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5NPEB4ACXDH178023',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4NJCBA6DD977247',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4WC562151849732',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GP5EX4F9565018',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HB5EM3AU922824',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDBT4K31B1169973',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDF78E57A969285',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VWC17AU1FM326560',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA6AT8F8904287',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV1622FS1C2274299',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AB5SX4E0211010',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AE2KP9B9781342',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDHH8HB3BA364643',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGEP9BP5FD419782',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4DC54876S775767',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDF68E95A322122',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GD21ZCG5DZ311908',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GB5EG9AF559679',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGFAFR8BA087178',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTMF1EW9AK828019',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3F9C50EK207455',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C4RDGBG5FR708063',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDHDG8DC452252',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUSH74F78N076626',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BD1EB7FU776023',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS4PKJ7FR237501',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFK66N95G256015',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA6FC8E8382462',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXZV4C54D0126664',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGAV7AX3BW596050',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUMF98K79N722542',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WP1AA2A24CL844036',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J8TB1H28CA526119',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDKTUD38DD140923',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C6JD6BP9CG264475',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUET48HX5K999878',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2FMPK3K9XFB186166',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3UKJ7FR910739',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AB7AP3DN095896',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDLJ6FBXFA861863',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C4PDDBG8CT891652',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA8F2XEA761983',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCVAFR2BA971599',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEW1E87AF337513',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3BC8EG0BN647688',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJK1H50CE688666',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABW33434P421082',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWX3B59AE490942',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUD2AFD1DN231281',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AD0CU5FN552514',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GD422CG9EF882415',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJK1H58BE242375',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1CW2BL0E0672193',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KL4CJASB1EB230991',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTFW1E80AK914846',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4PP5SK7C4629222',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GAKRBED7CJ990585',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYA6C5XFD732130',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3K5C54FK110653',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AB7AP9DN305806',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2D4RN4DE3AR509418',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJK1H51EE705980',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULT58E55A822177',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDJAG2FC469644',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1HGCP2F32BA411890',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1B3CC5FB1AN866001',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1CGBFE5CD372917',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0NC5DN784541',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1NC2LF1F0823280',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3LN6L2G96FR567092',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CN7AP5EL896263',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDCGG0EB4EG047870',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1CW2BL2E0299769',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR2MMXDC806592',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GS5EC9B9879494',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA4C9C58FD113634',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VW4T7AT3EM908714',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AJ5SX7F0283971',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1HGCP2F3XBA986657',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA8Z5C58FD109365',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C4RDGBG9FR452557',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5FRYD4H86EB904564',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBALM7C55EE196266',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VW467AT0DM774637',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHTC6AD6DU424656',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C6TD5HT8CG739492',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUWG94F19N559109',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPH7C53BE558354',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B9C51EP616031',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B1C56FK025807',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GAKVCED5CJ079916',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GAKRBKD4DJ454411',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6KD57Y52U726005',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0ND0FN303560',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK4FM447978',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUMF98K79A948202',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1AZ4EH3FM827754',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C3CFFJH5ET765822',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALAG2D48CA268391',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CA1CV5AH218802',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CCABG7FH782942',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD18401H739493',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAF98E56A784425',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV4902DZ0B2469623',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPH5G59BN556722',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHKD5BH2B2817800',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEW1CM0EF643488',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DV57V790009571',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C3CFFERXFT217044',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHFAFL8DA573525',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUVD38J091029181',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNDKG3A23A7812908',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D7RB1GPXAS953014',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABN53442J935845',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FT7W2A68EE141174',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1DGBFE8ED683040',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA0FS7FP643916',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBP9ZAXBC029059',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK7FM631733',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2B3CJ5DT8BH051337',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFPDCGP1EG904821',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CN7AP9FL049750',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAVAFD2CN510733',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AA0CC5AN969348',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D4PH9FG1BT160297',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBH64B31N143719',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAFAFL1DA176918',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPK53509A119927',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHCM3AC8BU816778',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ1FY9BW295570',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULT58E22A809057',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNADH4A36A6818662',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNDJT2A19B7403306',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B9C57DJ385637',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABW53425P692342',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CU2E8XCC984464',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKG7C54DJ067587',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDEJ7KB9CA694430',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0ND5EN133615',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDGF4HB7DG852326',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANW135X8C199244',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T1BURHE4FC601217',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAURD68D82A222933',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GP5EX3F9519387',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU2MAFCXFN268129',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'NM0KS9BN5BT672229',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUUL98E38A722899',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GD11ZCG2DF865369',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1BA0NC1FN175969',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AN0NU1CN462135',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANU535X9B336090',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GKKRNED6DJ116024',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4F2CY0C74AK186632',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73Y4HL9BG072685',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GE5E30CF501516',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUET48H65K878345',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFNCE30DS482140',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYF8C56DD184802',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTEBC3EH8B2555538',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALAG2V67EA523423',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AF5MR1DT856876',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULD64B64N091975',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B3C51DF035615',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHHT6KD7CU062372',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD18703H199804',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3G7C58EF098219',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AS5MT4AW440077',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CL95816C885452',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTKR1AD2BP651000',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUEF78E18A577670',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDGAFL3AA786888',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA4C9C51FD632993',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D7RV1CT2AS233152',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGVAFR0CA617745',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AB1RX4F0517754',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C6RD6NT7CS333748',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA66244A628686',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GD311CGXFF681262',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D4PU7GX1AW538612',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDZN3EU9E3738276',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DH8E50C0994122',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWB3C57AP717059',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYF4C59DD668553',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6AP6BM981849',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DX6ED7B0561314',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMJK1H5XCE619743',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV140MAK1F1409470',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA5B3C52FD844547',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1BJ0HR7DM543811',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBLF44J48C068904',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFNEE38CS142423',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBR9ZA8BC930683',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS4KEF0CR405713',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHBL5EF4B5827658',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1BV7AP3FM188953',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALVE2BG8FH699815',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCFAFH1AN502113',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBALZ5C50CC366080',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPT73528C924579',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUR4AFD4CN608619',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3BCBGG4EN336747',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV1612FH9D2794713',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T1KE4EE5AC038093',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BF1FK2DU546895',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUTX28N011982585',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AE2KP4B9009122',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBF78E48A286180',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WP0AA2A9XCS563687',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1AZ4EH3FM802515',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBASN2C54DC751455',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CU2F6XAC024183',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKF3C50DJ827896',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4USCN53482L491973',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AL2AP7CC481960',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK6BM772755',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULT68E95A905052',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D7TT2HTXBG871099',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VW8S7AT6FM650811',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDHDG2DC331071',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUUT28N511684968',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1DE1KY7C0523807',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D4PT5GK1BW330520',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHCT4AE1FU634520',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWV13507P704092',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAHN83516D031850',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHFF2C23D2042446',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5LMJJ2H59AE315034',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '137ZA83341E161340',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GT5GRXC9881366',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BK1EB0FU999655',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1YVHZ8BH1A5086928',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHCT4AE0FU614114',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B3G53DN939479',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHFE2C26D2954698',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR1NBXBC369519',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AX5S35F0982155',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBDC47L49C427972',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3DEF3CR600364',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANV1C57AC340862',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDGAFL6DA395397',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'W04GP5EC9B1193699',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK7AM014857',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWGU7AN4AE093972',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1VFAFL4DA042337',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD2H2XDH638809',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1EY74L78D682708',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGAV7AX5AW501406',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA9F56DA614252',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ1MU0DW807736',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAFR9C52CD437004',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDJK7DA3FF707535',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHFAFLXAN065965',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFK66N93G303864',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAWB33548P436489',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1BA0NC7FN358602',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CN7AP6EK412963',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR1NB8BC495894',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AT2MLXEC956955',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUXL58E75A906258',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABN53492J619857',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3R1C58EF358884',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73M4HL6BG597490',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C63D3KLXCG885003',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T1KE4EE9DC005926',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GADT13S642156776',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FBNE3BL1BD990492',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1DE1KY7E0645408',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JHMZF1C68DS100240',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CDXCT8DH673561',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXFF03579L147281',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUAUUAFG6F7669540',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GTPCTEX1AZ604490',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D7RE5GK5BS757101',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK1CM717213',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU4FAFR5DA688487',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSW2B52AE436507',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GS5GX6E9551003',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AE2KP2C9518045',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3GKJ6FR467131',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GD5GRXCF279782',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMCU0F75FU096014',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPK7C50BA485758',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3CDFEB1FD436490',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ2NC7D9447875',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D4PU6GXXBW080628',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFFBCBD1BG880708',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73M3HL3AG016178',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3BC6EVXAN858852',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUXL68E04A703328',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUAPV54B43N098212',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABS334X1J360484',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DL5ED2B0235796',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DF8E54D0032784',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFEBBBK7BG162438',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUAPV64B63N929263',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGFAFC0DN469566',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2B3CA8CT2AH953578',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFHDDAJ8BA058104',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANW53558C432602',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBGC3ZA5EC409087',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1CE2CP6EL063149',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3CDZBG6EN749335',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUEF48H07K066811',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B5C51EP071330',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6YX36DX65914555',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDGF4HB5CF577592',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1DGBFE1ED602525',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AF0KY8FN694497',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AH5SX7E0370439',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1AB7AP2FY153631',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUSGAFB9AN898604',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKA4C56BC425614',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUR4AFD3DN361966',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU4FAFR8BA946899',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3JEF1ER851661',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1NC2JF5B0937635',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDKN3DP5D3087854',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WUARU98E47N012443',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GKS1EEF1ER977087',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'ZHWGU5BZ1DL384751',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1B3CB8HB8BD501551',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA2EK1EM082335',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C6JD7EP3CG003263',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1YD54B95N728033',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1HGCR2E77DA627137',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6KE54Y72U689203',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5J8TB3H79GL321961',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4A4JM2AS6AE375537',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1NC2NF1E0051682',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GA5GR8CF614398',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAFAFL4CN098710',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19XFB2E25CE132645',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDEJ7EBXEA074815',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DU6EV5A0807826',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GD11ZCG9DF770520',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AF5MR1FT066173',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3X5C51ED728937',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA4EC4EM566990',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4A4JM2AS1AE014491',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'ML32A3HJ5EH481461',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GY5GV5B9148901',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1DGAFE7CD798316',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD18451H956005',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALFR2BN1AH938153',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAC48H84K225142',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYA6C56FG834880',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDGF4HB2DA806681',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4RDHDG8FC519676',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DF5EG8A0876368',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D7RV1CT7AS450972',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DS8ED0B0926863',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCFAFR4EA941795',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1D4PU2GK6AW711323',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CDXEJ0CH503690',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KL4CJCSB5FB191707',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CCAET5CH091655',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DN57UX60585111',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FBNE3BL4DD200752',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU4FBFL0CA709701',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1VWAH7A35DC670644',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD18681H049282',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5NPDH4AE7DH200703',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4SDHCT9EC720260',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUTFAFH3CN955488',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C3CFFCR6CT855421',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBR9ZA9DC580399',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6EL12YX2B412930',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFLDCFP7EG375861',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKF5C52CE038166',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBLC37F36C795751',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA1CB5CL376241',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBR93W28C438583',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALGS2DF5DA725864',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DM57N340159463',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1HGCR2E77FA520592',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CDYAGXDH642923',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSW3B54AE360827',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAEA5C51AC961226',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3FA6P0LU9DR473086',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DC8E31E0023484',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BD1FK7DU298875',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV1672MW2B2982745',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1YL64B54N221170',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNAFT4A24A5693584',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AA5AP4EC972223',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AW5SX8F0847306',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3NKJ0FR260870',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3G5DB03EX4S882481',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JHMZE2H31BS148537',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1AY1AR1DM745051',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGFF9BP3BD184266',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AH5SX4D0796717',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CL96975C135155',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBBR93W07C148499',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GTG5AEA9F1653145',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5UXFB33573L497269',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5FRYD3H62GB628816',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAUN93539V023669',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDKN3DU0F0868551',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1DMAFP5FA223132',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C4RDGCG2FR758823',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'W04G05GV0B1167706',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C4NJCBA5FD572922',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTHBK1GG0F2923733',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3DEF1BR775002',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AX5SX7E0453629',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3CDZCB3CN455553',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4DC44571S944761',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA9F70DA940422',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WP1AA2A29CL051489',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFBB03C79G696970',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUPL58E35A128959',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPH5C54AA077541',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AL2AP9BN369664',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAFR7C54CC164786',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAKA8C53AC920505',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4USBT33575L425126',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDF58E45A811456',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5BZAF0AA2EN602323',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALAB2D4XCA389860',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM3TB2MA8A0371034',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DV5EP4E0793416',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AF5MR8CT440581',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTMF1E8XAF345522',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DU6EAXA0737124',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKF98E78A660759',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBXPA73464W252294',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1BA0NC3FN500704',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3HEF0DR686807',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDKN3DP1D3994469',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAFR9C59BD207684',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1VWAH7A32DC235225',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BF1FK8EU693319',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GA5GR9FF466752',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUUL78E86A006341',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CL96935C497452',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEW1CMXDK471587',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFNGE32DS900964',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGL78E48A675433',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMEU3BE4AU783847',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU3VAFR4CA551912',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHFAFL9AN508266',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSX2A58AE380720',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C3CFFDRXFT698852',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3C1C51CA748415',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VW1K7AJXEM797633',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDKDTB35E1854148',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4WE587771271593',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUAC48H86K083619',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBFAFL3EA663995',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'NM0KS9AN2AT252119',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'YV1672MS2B2208654',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5TDBM5G13BS973639',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHFH4JGXFA638406',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNAFZ6A33F5439942',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPK5G58BN108828',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTMHY7AJ0D4394643',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GKKRNED2DJ406003',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA4A7C51FD988029',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUVD38JX91563966',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDPK4HA8DF930718',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4F2CY0C74BK461837',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1WYAFE0AD522580',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DH5EY3B0301194',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CDXL93FH392744',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GE5G30EF719682',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6BF0KL2FN036604',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4CU541X34449857',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBALX5C52CC238087',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUUL78E75A497628',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS4KEF6DR781821',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNAFK4A60F5930214',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAULC68E25A501641',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAUU3C54AA510374',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHEC4A49EA364033',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYB6C55DD776823',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BF1FK0CU840262',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUFFBFL1DN064785',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDDJK7DA9FF884736',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCFAFH3EN294578',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73Y3HL2AG716794',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFNAE36FS479671',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGAV3AX8DW634867',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1LFBFP9EA684943',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBLC31E12C159498',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AB5R3XE0485332',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ2KRXCT158404',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANV93539C220857',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTNX2A5XAE120011',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4F2CY0C76AK994433',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5GAKVCKDXFJ307112',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'NM0AS8F72E1903511',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4USBU33537L959577',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUYGBFC6CN953912',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WP0AB2A97FS054013',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYM1C57FD557362',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALCT2BG0FH139915',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAFA53591L580129',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0NCXCN881314',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFK66N66G609683',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAGN635X5D135767',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA76607A835735',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWX3B58AE522229',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS4CEF8ER984927',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDH78E87A013390',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNADM5A34D6731168',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABS33461J723363',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1CW2BL6F0110820',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6AP1AM482830',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBVAFBXBN617174',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5FPYK1F26CB302269',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUNF78P47A634640',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUNF78P96A961842',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8CS1MW2EM236696',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWF3D56AE039855',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FMEU3DE9AU173214',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBSBL934X4P780131',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUSX28N711165514',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAPH5C53AA767068',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP57M09U343266',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C6JR6CT5DG965206',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAAV53431J613465',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'NM0AE8F78F1283305',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1AB6APXCL137521',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73M4HLXAG285381',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD18993H379008',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA56873A837577',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1B3AZ6EZXAV017883',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYB6C50ED665842',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1EV94LX7D276750',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CCAJG1DH681572',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JHMZE2H36ES565768',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBALL5C53EJ894048',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFAD02E29G994769',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AT5S37F0258320',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3C3CFFER3ET279576',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3B9C51DF206771',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HK5ES3BU692234',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1C8AFPXEA594835',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4GA5EC8BF450731',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GP5EX0F9508024',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1MMBFE0AD614958',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSW2B5XAE191987',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBLF44J07C698546',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AH5R34E0298019',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM3TB2BV7D0662926',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBFAFL0EN458045',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DX67D490743222',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3N1AB6AP5CL941774',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AL2AP6BN538829',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUKD78P27A053436',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SAJWA1CB6CL892768',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHGBFC7DN381637',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1B3CB2HA1AD669728',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAEW53402P550290',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFEBBCFXCG382868',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBLE37GX6C453670',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANF33577B445411',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUUFAFH7AN698983',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR1NB0BC548684',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4HP54KX24895253',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUWFAFH6EN922162',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3N3C51EK748921',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GT022CG0EF442103',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYF4C57FG984017',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUGU44D72N323374',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5TFAW5F15FX587683',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GT5GX1E9396132',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM3KE2BE1D0763835',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AR1NB9CC234856',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAUU3C54CA485043',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1LFAFP7CA939399',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA6B4C55DD591019',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBSVA93558E072057',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2G4GY5GVXB9645913',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDG94F66N553261',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2B3CL5CT2BH622283',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D73Y3HL5BG594062',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVWBB7AJ8DW958034',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYS3UKJ0FR332497',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AZ2NC0F9976250',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANE53597C340510',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '137FA90341E366623',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JTDKTUD31ED244784',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBFAFL4BA001760',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAU3VAFR1BA600949',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAAX13473P541950',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N4AB7AP1DN598004',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3VW1K7AJ5FM739432',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNADH4A33A6535104',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUDD38J691478120',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DL1E34C0470637',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFFDCCD2CG517666',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN1CV6EK9BM894767',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTWF3A58AE147320',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCH74F89N700357',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19XFA1F34AE758026',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCFFDABE2BG238845',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C6RD7LP6CS758700',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T2BC1BA6FC832223',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'TRUSX28N711682389',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1C3CDFCB6ED953639',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBABN53403J782320',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2C3CK5CV1AH575172',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KL4CJFSB5DB404041',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBADT43431G656312',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1N6AF0LY5EN154652',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUHF98P87A591669',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AR5SXXF0568205',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAYE4C56DD261468',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AA0NC0FN317305',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5XYZG3AB8BG164226',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19XFA1F39AE286776',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KMHD35LH6FU826243',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBDR33W59C392643',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUNF98P17A013934',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SCBLE47KX9C552567',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUCFAFH0EN955449',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGEF9BP8ED533180',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUEH78E87A202383',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTEW1CMXEK430040',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GKS1HE05DR410103',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1AY94L58D294502',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JH4CL96997C308824',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JN8AF5MR3FT867624',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1YVHZ8BA9A5479644',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFNBE37FS522792',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JM1GJ1T60E1131108',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GYUCFEJ1AR245670',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBANN73507C562641',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19VDE3F36DE959723',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WA1WKAFPXBA776089',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2B3CL3CG6BH169082',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AH1RX6F0784277',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KNADM4A32C6070250',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'KL4CJGSBXEB489062',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SALVP2BG5FH770253',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBA3V9C50EP384111',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WDCYC3HF1DX017143',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBAVC73567K535794',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '19UUA66266A144795',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1GKS2GEJ4CR845130',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2T1KE4EE3AC464610',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUVC68E15A936594',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUML44E66N430629',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4T1BD1EB5EU272066',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DK67V890871194',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '5N1AN0NU9BC343758',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUDG68E65A289660',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DH5E54C0007715',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3D7TT2HT1BG326960',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WAUBF78E58A163973',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '2HNYD28239H777817',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6AH5RX0E0745626',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G4PT5SV4E4729044',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '3GYFNEE31FS366007',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1FTSW3B59AE804283',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '4USBU335X8L539395',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WBS3R9C58FK997821',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6DM577080739793',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WVGAV7AX9CW813456',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);
INSERT INTO source (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    value, generate_type_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), '1G6KD57Y13U958604',
        'fed3f9dc-500b-4847-b273-43745ce9f41a', 0);