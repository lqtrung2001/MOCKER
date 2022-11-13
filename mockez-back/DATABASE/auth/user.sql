INSERT INTO "group" (id, name, description, version)
VALUES ('017f2591-eacf-40a2-a96a-fde394558fdf', 'WEB PROGRAMMING',
        'Web programming refers to the writing, markup and coding involved in Web development, which includes Web content, Web client and server scripting and network security. The most common languages used for Web programming are XML, HTML, JavaScript, Perl 5 and PHP. Web programming is different from just programming, which requires interdisciplinary knowledge on the application area, client and server scripting, and database technology.',
        0);

INSERT INTO "user" (id, address, dob, gender, granted_authorities, is_account_non_expired, is_account_non_locked,
                    is_credentials_non_expired, is_enabled, name, password, phone, username, group_id, version)
VALUES (gen_random_uuid(), 'Thu Duc city, Ho Chi Minh city, Viet Nam',
        '2001-09-03 00:00:00.000000+00', 'MALE', 'ROLE_USER|ROLE_ADMIN', true, true, true, true, 'Do Quoc Viet',
        '$2a$10$aGlByXJid6Y8rVeYWNn92uzKoUbUZ1wmCu84navyJ87ZtkFT5ux7a', '84393014871',
        'doquocviet.sept3rd@gmail.com', '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO "user" (id, address, dob, gender, granted_authorities, is_account_non_expired, is_account_non_locked,
                    is_credentials_non_expired, is_enabled, name, password, phone, username, group_id, version)
VALUES (gen_random_uuid(), 'Thu Duc city, Ho Chi Minh city, Viet Nam',
        '2001-09-03 00:00:00.000000+00', 'MALE', 'ROLE_USER|ROLE_ADMIN', true, true, true, true, 'Luong Quoc Trung',
        '$2a$10$aGlByXJid6Y8rVeYWNn92uzKoUbUZ1wmCu84navyJ87ZtkFT5ux7a', '84393014871',
        'lqtrung2001@gmail.com', '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO "group" (id, name, description, version)
VALUES ('2603a1f3-5bb7-4c61-bc2c-8a9bfc578de5', 'OBJECT-ORIENTED PROGRAMMING',
        'Object-oriented programming (OOP) is a computer programming model that organizes software design around data, or objects, rather than functions and logic. An object can be defined as a data field that has unique attributes and behavior.',
        0);

INSERT INTO "group" (id, name, description, version)
VALUES ('acd39d4c-3857-4eb9-9c13-61ce77323954', 'WEB SECURITY',
        'Ensuring that your website or open web application is secure is critical. Even simple bugs in your code can result in private information being leaked, and bad people are out there trying to find ways to steal data. The web security-oriented articles listed here provide information that may help you secure your site and its code from attacks and data theft.',
        0);

INSERT INTO "group" (id, name, description, version)
VALUES ('b6be777f-b967-4b5f-b4d4-d29fe09bcc71', 'SOFTWARE TECHNOLOGY',
        'A general term covering the development methods, programming languages, and tools to support them that may be used in the development of software.',
        0);

INSERT INTO "group" (id, name, description, version)
VALUES ('2f3014e2-83ae-4473-b73f-065ce31b87ff', 'MOBILE PROGRAMMING',
        'Mobile application development is the process to making software for smartphones and digital assistants, most commonly for Android and iOS. The software can be preinstalled on the device, downloaded from a mobile app store or accessed through a mobile web browser. The programming and markup languages used for this kind of software development include Java, Swift, C# and HTML5.',
        0);

