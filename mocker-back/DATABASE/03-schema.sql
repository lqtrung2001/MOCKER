INSERT INTO schema (id, CREATED_BY, CREATED_BY_GROUP, CREATED_DATE, MODIFIED_BY, MODIFIED_BY_GROUP, MODIFIED_DATE, name,
                    description, project_id, version)
VALUES ('82dce927-f279-4581-a18b-5d14d48f1eb0', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Inventory',
        'Rich Snippets pull the information from structured data markup through semantic vocabulary such as schema.org, to provide more details about the specific result (contact, ratings, reviews, availability status, etc.).',
        '2b2979df-afa5-4f74-b877-9896ee9df605', 0);

INSERT INTO "table" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     version, description, name, schema_id)
VALUES ('89192222-aa8e-4d66-82b5-190ef6f7d84f', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'USER', 'USER table',
        '82dce927-f279-4581-a18b-5d14d48f1eb0');

INSERT INTO "table" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     version, description, name, schema_id)
VALUES ('4e9734ff-1001-4bbe-9a15-f4d731cd3531', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'ROLE', 'ROLE table',
        '82dce927-f279-4581-a18b-5d14d48f1eb0');

INSERT INTO "table" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     version, description, name, schema_id)
VALUES ('4df6c920-fc58-4523-a4e5-2eae559920a8', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'PRODUCT', 'PRODUCT table',
        '82dce927-f279-4581-a18b-5d14d48f1eb0');

INSERT INTO schema (id, CREATED_BY, CREATED_BY_GROUP, CREATED_DATE, MODIFIED_BY, MODIFIED_BY_GROUP, MODIFIED_DATE, name,
                    description, project_id, version)
VALUES ('f69cc699-65aa-41d4-99bc-7a0998a15104', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Product',
        'Rich Snippets pull the information from structured data markup through semantic vocabulary such as schema.org, to provide more details about the specific result (contact, ratings, reviews, availability status, etc.).',
        '2b2979df-afa5-4f74-b877-9896ee9df605', 0);

INSERT INTO schema (id, CREATED_BY, CREATED_BY_GROUP, CREATED_DATE, MODIFIED_BY, MODIFIED_BY_GROUP, MODIFIED_DATE, name,
                    description, project_id, version)
VALUES ('80a14030-a595-4dc4-99b2-1ca3332cb122', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Sale',
        'Rich Snippets pull the information from structured data markup through semantic vocabulary such as schema.org, to provide more details about the specific result (contact, ratings, reviews, availability status, etc.).',
        '2b2979df-afa5-4f74-b877-9896ee9df605', 0);

INSERT INTO schema (id, CREATED_BY, CREATED_BY_GROUP, CREATED_DATE, MODIFIED_BY, MODIFIED_BY_GROUP, MODIFIED_DATE, name,
                    description, project_id, version)
VALUES ('22240424-95d5-4380-91cb-8266df8b863b', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Customer',
        'Rich Snippets pull the information from structured data markup through semantic vocabulary such as schema.org, to provide more details about the specific result (contact, ratings, reviews, availability status, etc.).',
        '2b2979df-afa5-4f74-b877-9896ee9df605', 0);

INSERT INTO schema (id, CREATED_BY, CREATED_BY_GROUP, CREATED_DATE, MODIFIED_BY, MODIFIED_BY_GROUP, MODIFIED_DATE, name,
                    description, project_id, version)
VALUES ('b8437291-abf3-4394-8fed-ba0e76237c3c', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Order',
        'Rich Snippets pull the information from structured data markup through semantic vocabulary such as schema.org, to provide more details about the specific result (contact, ratings, reviews, availability status, etc.).',
        '2b2979df-afa5-4f74-b877-9896ee9df605', 0);

INSERT INTO schema (id, CREATED_BY, CREATED_BY_GROUP, CREATED_DATE, MODIFIED_BY, MODIFIED_BY_GROUP, MODIFIED_DATE, name,
                    description, project_id, version)
VALUES ('ce07a9ac-cc4f-48b1-b7e0-0205afef01fb', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'History',
        'Rich Snippets pull the information from structured data markup through semantic vocabulary such as schema.org, to provide more details about the specific result (contact, ratings, reviews, availability status, etc.).',
        '2b2979df-afa5-4f74-b877-9896ee9df605', 0);