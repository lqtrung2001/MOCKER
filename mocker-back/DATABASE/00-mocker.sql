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

INSERT INTO project (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, group_id, version)
values ('2b2979df-afa5-4f74-b877-9896ee9df605', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Product landing page',
        'Being the face of any website, a product landing page has the ability to target customers more than any other aspect through its visuals and various other compelling features. Design product landing page is vital for web developers to test practical skills and how convincing they actually are. Aspirants exploring web app project ideas must take up this interesting web development project for final year students to learn in-depth what customers demand and how visuals can grab their attention.',
        '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO project (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, group_id, version)
values ('73165d34-2049-4adf-a55b-e7fab7415c2d', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Giphy with a unique API',
        'This project involves developing a web application that uses search inputs and Giphy API for presenting GIFs on a webpage. This is an excellent beginner-level project wherein you use the Giphy API to recreate the Giphy website. We recommend you to use the Giphy API since you need not request for any API key to use it. Another advantage of using the Giphy API is that you don’t require to worry about configuration while requesting data.',
        '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO project (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, group_id, version)
values ('4751abe5-724d-42df-aab1-65bd3d669162', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'JavaScript quiz game',
        'This web development project aims to create a JavaScript quiz game that can take multiple answers and show the correct result to users. While gaining JavaScript knowledge isn’t tricky, applying that knowledge in real-world scenarios is usually challenging. However, you can experiment with your skills by working on a small JavaScript-based quiz game.',
        '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO project (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, group_id, version)
values ('04b5ff70-a49f-45ee-8748-2d55ae2286ec', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'SEO-friendly website',
        'Today, SEO is an integral part of website building. Without SEO, your website will not have the visibility to drive traffic from organic searches in SERPs (search engine result pages). While Web Developers are primarily concerned about the website functionality, they must have a basic idea of web design and SEO. In this project, you will take up the role of a Digital Marketer and gain in-depth knowledge of SEO. It will be helpful if you are aware of the technical SEO for this project.',
        '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO project (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, group_id, version)
values ('16dac12c-b0ac-4a34-a9dd-441a38dffb1f', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)), 'Search engine result page',
        'This is a super interesting and exciting project! In this project, you have to create a search engine result page that resembles Google’s SERPs. While building this project, you must ensure that the webpage can display at least ten search results (just like Google). Also, you must include the navigation arrow at the bottom of the webpage so that users can switch to the next page.',
        '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

INSERT INTO project (id, created_by, created_by_group, created_date, modified_by, modified_by_group, modified_date,
                     name, description, group_id, version)
values ('64f88eaf-0f75-46a9-b03b-37ab0fa613e1', '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290',
        date(timezone('UTC±00', now()::timestamp)), '5ecaf074-a91f-4758-ae0d-0724443a1a7a',
        'b6bf5612-12fb-4e77-aaa6-34d8223e2290', date(timezone('UTC±00', now()::timestamp)),
        'Google home page lookalike',
        'Another interesting JavaScript project on our list, this project requires you to build a webpage that resembles Google’s home page. Keep in mind that you have to build a replica of Google home page along with the Google logo, search icons, text box, Gmail, and images buttons – basically, everything that you see on Google’s home page. This should be relatively easy, provided you proficient in HTML and CSS.',
        '017f2591-eacf-40a2-a96a-fde394558fdf', 0);

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
