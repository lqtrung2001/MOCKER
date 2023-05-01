INSERT INTO "group" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, version)
VALUES ('b6bf5612-12fb-4e77-aaa6-34d8223e2290', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Administrator',
        'Administrator',
        0);

INSERT INTO "user" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    version, address, dob, bio, gender, granted_authorities, is_account_non_expired,
                    is_account_non_locked,
                    is_credentials_non_expired, is_enabled, name, password, phone, username)
VALUES ('5ecaf074-a91f-4758-ae0d-0724443a1a7a', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0,
        'Thu Duc city, Ho Chi Minh city, Viet Nam',
        '2001-09-03 00:00:00.000000+00', 'Software Engineer', 'MALE', 'ROLE_USER|ROLE_Administrator', true, true, true,
        true,
        'Administrator',
        '$2a$10$aGlByXJid6Y8rVeYWNn92uzKoUbUZ1wmCu84navyJ87ZtkFT5ux7a', '84393014871',
        'administrator@gmail.com');

INSERT INTO "group" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, version)
VALUES ('017f2591-eacf-40a2-a96a-fde394558fdf', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WEB PROGRAMMING',
        'Web programming refers to the writing, markup and coding involved in Web development, which includes Web content, Web client and server scripting and network security. The most common languages used for Web programming are XML, HTML, JavaScript, Perl 5 and PHP. Web programming is different from just programming, which requires interdisciplinary knowledge on the application area, client and server scripting, and database technology.',
        0);

INSERT INTO "user" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    version, address, dob, bio, gender, granted_authorities, is_account_non_expired,
                    is_account_non_locked,
                    is_credentials_non_expired, is_enabled, name, password, phone, username)
VALUES ('c60b6052-3117-411d-94a6-888813fb763a', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0,
        'Thu Duc city, Ho Chi Minh city, Viet Nam',
        '2001-09-03 00:00:00.000000+00', 'Software Engineer', 'MALE', 'ROLE_USER|ROLE_ADMIN', true, true, true,
        true, 'Do Quoc Viet',
        '$2a$10$aGlByXJid6Y8rVeYWNn92uzKoUbUZ1wmCu84navyJ87ZtkFT5ux7a', '84393014871',
        'doquocviet.sept3rd@gmail.com');

INSERT INTO "user" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                    version, address, dob, bio, gender, granted_authorities, is_account_non_expired,
                    is_account_non_locked,
                    is_credentials_non_expired, is_enabled, name, password, phone, username)
VALUES ('2ca2c401-8e9f-4acf-ab45-81c393c4355d', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0,
        'Binh Thanh District, Ho Chi Minh city, Viet Nam',
        '2001-12-20 00:00:00.000000+00', 'Software Engineer', 'MALE', 'ROLE_USER|ROLE_ADMIN', true, true, true,
        true, 'Luong Quoc Trung',
        '$2a$10$aGlByXJid6Y8rVeYWNn92uzKoUbUZ1wmCu84navyJ87ZtkFT5ux7a', '935544787',
        'lqtrung20122001@gmail.com');

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('017f2591-eacf-40a2-a96a-fde394558fdf', 'c60b6052-3117-411d-94a6-888813fb763a',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('017f2591-eacf-40a2-a96a-fde394558fdf', '2ca2c401-8e9f-4acf-ab45-81c393c4355d',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO "group" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, version)
VALUES ('2603a1f3-5bb7-4c61-bc2c-8a9bfc578de5', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        'OBJECT-ORIENTED PROGRAMMING',
        'Object-oriented programming (OOP) is a computer programming model that organizes software design around data, or objects, rather than functions and logic. An object can be defined as a data field that has unique attributes and behavior.',
        0);

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('2603a1f3-5bb7-4c61-bc2c-8a9bfc578de5', 'c60b6052-3117-411d-94a6-888813fb763a',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('2603a1f3-5bb7-4c61-bc2c-8a9bfc578de5', '2ca2c401-8e9f-4acf-ab45-81c393c4355d',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO "group" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, version)
VALUES ('acd39d4c-3857-4eb9-9c13-61ce77323954', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'WEB SECURITY',
        'Ensuring that your website or open web application is secure is critical. Even simple bugs in your code can result in private information being leaked, and bad people are out there trying to find ways to steal data. The web security-oriented articles listed here provide information that may help you secure your site and its code from attacks and data theft.',
        0);

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('acd39d4c-3857-4eb9-9c13-61ce77323954', 'c60b6052-3117-411d-94a6-888813fb763a',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('acd39d4c-3857-4eb9-9c13-61ce77323954', '2ca2c401-8e9f-4acf-ab45-81c393c4355d',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO "group" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, version)
VALUES ('b6be777f-b967-4b5f-b4d4-d29fe09bcc71', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SOFTWARE TECHNOLOGY',
        'A general term covering the development methods, programming languages, and tools to support them that may be used in the development of software.',
        0);

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('b6be777f-b967-4b5f-b4d4-d29fe09bcc71', 'c60b6052-3117-411d-94a6-888813fb763a',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('b6be777f-b967-4b5f-b4d4-d29fe09bcc71', '2ca2c401-8e9f-4acf-ab45-81c393c4355d',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO "group" (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, version)
VALUES ('2f3014e2-83ae-4473-b73f-065ce31b87ff', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'MOBILE PROGRAMMING',
        'Mobile application development is the process to making software for smartphones and digital assistants, most commonly for Android and iOS. The software can be preinstalled on the device, downloaded from a mobile app store or accessed through a mobile web browser. The programming and markup languages used for this kind of software development include Java, Swift, C# and HTML5.',
        0);

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('2f3014e2-83ae-4473-b73f-065ce31b87ff', 'c60b6052-3117-411d-94a6-888813fb763a',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');

INSERT INTO group_member (group_id, user_id, created_by, created_by_group, created_date, modified_by, modified_by_group,
                          modified_date, version, role)
VALUES ('2f3014e2-83ae-4473-b73f-065ce31b87ff', '2ca2c401-8e9f-4acf-ab45-81c393c4355d',
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 0, 'GROUP_ADMIN');