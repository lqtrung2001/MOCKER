INSERT INTO category (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                      name, description, version)
VALUES ('444d39cb-e619-46ac-bf58-ae0b8fb670bf', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Identify',
        'Identify source', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Natural ID', 'Natural ID',
        '444d39cb-e619-46ac-bf58-ae0b8fb670bf', 0);

INSERT INTO generate_type (id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                           modified_date, code, description, category_id, version)
VALUES (gen_random_uuid(), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Technical ID', 'Technical ID',
        '444d39cb-e619-46ac-bf58-ae0b8fb670bf', 0);
