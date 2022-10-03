-- https://www.javatpoint.com/sql-data-types
-- https://www.uuidgenerator.net/

INSERT INTO sql_type (id, code, description) VALUES ('11a4a291-d756-4249-8d76-638610faacce', 'CHAR', 'It is used to specify a fixed length string that can contain numbers, letters, and special characters. Its size can be 0 to 255 characters. Default is 1.');
INSERT INTO sql_type (id, code, description) VALUES ('6d4db29c-b189-4026-909c-59b1354f4b7c', 'VARCHAR', 'It is used to specify a variable length string that can contain numbers, letters, and special characters. Its size can be from 0 to 65535 characters.');
INSERT INTO sql_type (id, code, description) VALUES ('ce7b54f5-e8f2-4c13-aa49-d4bac706b0b8', 'BINARY', 'It is equal to CHAR() but stores binary byte strings. Its size parameter specifies the column length in the bytes. Default is 1.');
INSERT INTO sql_type (id, code, description) VALUES ('a356e5df-bae8-4d79-817f-c3561ce5d3d3', 'VARBINARY', 'It is equal to VARCHAR() but stores binary byte strings. Its size parameter specifies the maximum column length in bytes.');
INSERT INTO sql_type (id, code, description) VALUES ('deba4cfe-cb59-4dc7-aa28-2badf6db2edf', 'TEXT', 'It holds a string that can contain a maximum length of 255 characters.');
INSERT INTO sql_type (id, code, description) VALUES ('6f9bbf7d-1a9f-46d9-a23b-d9f180ea3c8c', 'TINYTEXT', 'It holds a string with a maximum length of 255 characters.');
INSERT INTO sql_type (id, code, description) VALUES ('076b7914-b8e6-485b-ad8a-9384e3192b9d', 'MEDIUMTEXT', 'It holds a string with a maximum length of 16,777,215.');
INSERT INTO sql_type (id, code, description) VALUES ('9bada719-e5a3-48df-8e29-392e94d91943', 'LONGTEXT', 'It holds a string with a maximum length of 4,294,967,295 characters.');
INSERT INTO sql_type (id, code, description) VALUES ('6a09d223-4a3b-4fbc-bca4-d1cfad68e355', 'ENUM', 'It is used when a string object having only one value, chosen from a list of possible values. It contains 65535 values in an ENUM list. If you insert a value that is not in the list, a blank value will be inserted.');
INSERT INTO sql_type (id, code, description) VALUES ('39d353ce-d98e-4260-a345-e0adafa91376', 'SET', 'It is used to specify a string that can have 0 or more values, chosen from a list of possible values. You can list up to 64 values at one time in a SET list.');
INSERT INTO sql_type (id, code, description) VALUES ('256948ae-09a0-4be8-a580-e1e8ecb910e3', 'BLOB', 'It is used for BLOBs (Binary Large Objects). It can hold up to 65,535 bytes.');
INSERT INTO sql_type (id, code, description) VALUES ('af5e4905-a1f0-4f9a-88d5-8f48c7846ec1', 'BIT', 'It is used for a bit-value type. The number of bits per value is specified in size. Its size can be 1 to 64. The default value is 1.');
INSERT INTO sql_type (id, code, description) VALUES ('5c7dfd7b-a20e-47a0-a25d-85b2dbb7fecf', 'INT', 'It is used for the integer value. Its signed range varies from -2147483648 to 2147483647 and unsigned range varies from 0 to 4294967295. The size parameter specifies the max display width that is 255.');
INSERT INTO sql_type (id, code, description) VALUES ('6c718d90-843c-4181-8b0f-6bec2f424f41', 'INTEGER', 'It is equal to INT(size).');
INSERT INTO sql_type (id, code, description) VALUES ('1888d660-c7b2-4ec4-8938-985b9155a05b', 'FLOAT', 'It is used to specify a floating point number. Its size parameter specifies the total number of digits.');
INSERT INTO sql_type (id, code, description) VALUES ('426a4508-82cf-49fa-9749-fdd9aa26bba6', 'DOUBLE', 'It is a normal size floating point number. Its size parameter specifies the total number of digits.');
INSERT INTO sql_type (id, code, description) VALUES ('82f1c899-e6dc-4631-8dbf-5e3e8573ca36', 'DECIMAL', 'It is used to specify a fixed point number. Its size parameter specifies the total number of digits');
INSERT INTO sql_type (id, code, description) VALUES ('675ac951-24fd-466b-a422-bf86310820b5', 'DEC', 'It is equal to DECIMAL');
INSERT INTO sql_type (id, code, description) VALUES ('b21c4fcb-9785-493e-ac26-75ddadfe7bbd', 'BOOL', 'It is used to specify Boolean values true and false. Zero is considered as false, and nonzero values are considered as true.');
INSERT INTO sql_type (id, code, description) VALUES ('7c3e2898-8254-429d-ad6f-542ba254911d', 'DATE', 'It is used to specify date format YYYY-MM-DD. Its supported range is from ''1000-01-01'' to ''9999-12-31''.');
INSERT INTO sql_type (id, code, description) VALUES ('a8f9a976-b4f4-4158-90e1-84cc07fd7660', 'DATETIME', 'It is used to specify date and time combination. Its format is YYYY-MM-DD hh:mm:ss. Its supported range is from ''1000-01-01 00:00:00'' to 9999-12-31 23:59:59''.');
INSERT INTO sql_type (id, code, description) VALUES ('313bc570-c240-4ddf-ad70-602640e6d9d4', 'TIMESTAMP', 'It is used to specify the timestamp. Its value is stored as the number of seconds since the Unix epoch(''1970-01-01 00:00:00'' UTC). Its format is YYYY-MM-DD hh:mm:ss. Its supported range is from ''1970-01-01 00:00:01'' UTC to ''2038-01-09 03:14:07'' UTC.');
INSERT INTO sql_type (id, code, description) VALUES ('a50185d8-bf7d-44bb-b094-a4a16684bcb6', 'TIME', 'It is used to specify the time format. Its format is hh:mm:ss. Its supported range is from ''-838:59:59'' to ''838:59:59''');
INSERT INTO sql_type (id, code, description) VALUES ('ea0c4167-aeed-4c9d-81d0-d2025a9d2f93', 'YEAR', 'It is used to specify a year in four-digit format. Values allowed in four digit format from 1901 to 2155, and 0000.');

INSERT INTO category (id, name, description) VALUES ('65d4c145-8bbe-4df6-b9e4-2050030e5824', 'Products', 'Products source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('f8d4b386-3e9d-4abe-a894-fb678833f84a', 'Car Make', 'Car Make', '65d4c145-8bbe-4df6-b9e4-2050030e5824');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('787add3e-f601-44d9-b058-e520fbccbb03', 'Car Model', 'Car Model', '65d4c145-8bbe-4df6-b9e4-2050030e5824');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('f77fa8c0-0b5f-4c9f-910a-bf8dfccbd183', 'Car Model Year', 'Car Model Year', '65d4c145-8bbe-4df6-b9e4-2050030e5824');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('d81b72c9-39b5-475d-a3e8-c07f27194cbd', 'Movie Genres', 'Movie Genres', '65d4c145-8bbe-4df6-b9e4-2050030e5824');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('8a068072-9898-4d2c-a4de-8f59b22912bf', 'Movie Title', 'Movie Title', '65d4c145-8bbe-4df6-b9e4-2050030e5824');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('bd5f713f-952d-4bb7-8bbd-2b4c8da087e7', 'Product (Grocery)', 'Product (Grocery)', '65d4c145-8bbe-4df6-b9e4-2050030e5824');

INSERT INTO category (id, name, description) VALUES ('74fc1591-782d-4ee1-b011-85b00ab71a35', 'Personal', 'Personal source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('9a8b5f02-28a4-4d37-bb82-4f1353bd5147', 'Avatar', 'Avatar', '74fc1591-782d-4ee1-b011-85b00ab71a35');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('a07447c8-df4f-4dfa-9838-a46c34e888ca', 'Name', 'Name', '74fc1591-782d-4ee1-b011-85b00ab71a35');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('132d1731-ed97-4cf8-a676-1f514b70d0c4', 'Gender', 'Gender', '74fc1591-782d-4ee1-b011-85b00ab71a35');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('c50a8e5f-1f27-4406-8306-bcea6d0ba874', 'Language', 'Language', '74fc1591-782d-4ee1-b011-85b00ab71a35');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('a0dcc3bb-933a-434a-9b2b-b24f3696ed9f', 'University', 'University', '74fc1591-782d-4ee1-b011-85b00ab71a35');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('22032f62-d49f-4d15-b60f-0c66c08e7771', 'Title', 'Title', '74fc1591-782d-4ee1-b011-85b00ab71a35');

INSERT INTO category (id, name, description) VALUES ('c4e9aebf-25b1-4503-8914-015b5d7ebadd', 'Nature', 'Nature source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('cfdc0d59-9408-47f2-9f09-5b1f8240c634', 'Animal Common Name', 'Animal Common Name', 'c4e9aebf-25b1-4503-8914-015b5d7ebadd');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('d3c891d2-aa94-4caf-b0ec-f30452294d11', 'Animal Scientific Name', 'Animal Scientific Name', 'c4e9aebf-25b1-4503-8914-015b5d7ebadd');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('e90b6ad1-211f-47fd-ad5d-174251f8c7c4', 'Plant Common Name', 'Plant Common Name', 'c4e9aebf-25b1-4503-8914-015b5d7ebadd');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('71bb77b5-5c50-46a7-b65b-cfca7000b883', 'Plant Family', 'Plant Family', 'c4e9aebf-25b1-4503-8914-015b5d7ebadd');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('aa03c624-9b69-4d0f-968a-2ac38e4d4392', 'Plant Scientific Name', 'Plant Scientific Name', 'c4e9aebf-25b1-4503-8914-015b5d7ebadd');

INSERT INTO category (id, name, description) VALUES ('cbc3ea1f-bd8d-44fc-af86-5d052b3f90cc', 'Location', 'Location source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('9f9d1ec5-0590-403c-ad37-ca4d3a515c21', 'City', 'City', 'cbc3ea1f-bd8d-44fc-af86-5d052b3f90cc');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('6daacac2-da1a-45bc-863c-0540e9a48857', 'Country', 'Country', 'cbc3ea1f-bd8d-44fc-af86-5d052b3f90cc');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('3144b4a6-4e50-4995-bc49-0ed326a88797', 'Country Code', 'Country Code', 'cbc3ea1f-bd8d-44fc-af86-5d052b3f90cc');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('a1b763db-594a-4926-b93a-3bb77a462648', 'Street Name', 'Street Name', 'cbc3ea1f-bd8d-44fc-af86-5d052b3f90cc');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('483eff8a-5bdb-4d2c-b53b-3bd5999146f7', 'Street Address', 'Street Address', 'cbc3ea1f-bd8d-44fc-af86-5d052b3f90cc');

INSERT INTO category (id, name, description) VALUES ('ebd87482-af4b-448e-8c74-1ccd4c5b48b2', 'IT', 'IT source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('68d318cb-5db2-4b60-9f17-61762ebf823d', 'App Name', 'App Name', 'ebd87482-af4b-448e-8c74-1ccd4c5b48b2');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('3b0d1040-9e60-454d-8803-b86290f9348c', 'Domain Name', 'Domain Name', 'ebd87482-af4b-448e-8c74-1ccd4c5b48b2');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('b1a1cd2a-4073-4857-902b-a094b04cceb9', 'Email Address', 'Email Address', 'ebd87482-af4b-448e-8c74-1ccd4c5b48b2');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('d730e83d-9d61-42c7-9fd2-5ec1051655f6', 'IP address v4', 'IP address v4', 'ebd87482-af4b-448e-8c74-1ccd4c5b48b2');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('50b2ccea-ec66-45ac-a670-2f67f052f4c9', 'Username', 'Username', 'ebd87482-af4b-448e-8c74-1ccd4c5b48b2');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('0d78b4d3-ded1-4374-ad9b-403c5e7972b4', 'URL', 'URL', 'ebd87482-af4b-448e-8c74-1ccd4c5b48b2');

INSERT INTO category (id, name, description) VALUES ('74205a25-b9d5-4590-a732-4773f12c777b', 'Health', 'Health source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('bab549ac-a46a-4f99-9197-040eb93d30ec', 'Drug Company', 'Drug Company', '74205a25-b9d5-4590-a732-4773f12c777b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('cb036f25-3259-48de-b23c-bd09252b6e02', 'Drug Name (Brand)', 'Drug Name (Brand)', '74205a25-b9d5-4590-a732-4773f12c777b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('5745d08d-98f1-412a-9daf-8041c6179d14', 'Drug Name (Generic)', 'Drug Name (Generic)', '74205a25-b9d5-4590-a732-4773f12c777b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('681f12dd-fd4b-4502-a168-e453093f60cc', 'FDA NDC Code', 'FDA NDC Code', '74205a25-b9d5-4590-a732-4773f12c777b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('064cc983-1741-4e87-b989-c405213d016e', 'ICD9 Procedure Code', 'ICD9 Procedure Code', '74205a25-b9d5-4590-a732-4773f12c777b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('78b4a6f5-f7e4-4eaa-97f3-2b394f9c37f4', 'NHS Number', 'NHS Number', '74205a25-b9d5-4590-a732-4773f12c777b');

INSERT INTO category (id, name, description) VALUES ('50033121-1ddd-481f-a352-c85034870506', 'Crypto', 'Crypto source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('96160bae-0955-434c-be52-9fb28afa6151', 'Bitcoin Address', 'Bitcoin Address', '50033121-1ddd-481f-a352-c85034870506');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('0ea9776a-620a-40a2-a43d-ac7bba55a99d', 'Ethereum Address', 'Ethereum Address', '50033121-1ddd-481f-a352-c85034870506');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('c0945aa3-2c64-4750-adcb-938dd267a093', 'Tezos Account', 'Tezos Account', '50033121-1ddd-481f-a352-c85034870506');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('0df5f1e4-94c3-43b1-9432-2428deb4ed17', 'Tezos Block', 'Tezos Block', '50033121-1ddd-481f-a352-c85034870506');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('a780f6cc-1f3b-4dc3-bd39-80b451e57970', 'Tezos Contract', 'Tezos Contract', '50033121-1ddd-481f-a352-c85034870506');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('9ce9f2ea-306c-40e7-9345-82c3e341af30', 'Tezos Operation', 'Tezos Operation', '50033121-1ddd-481f-a352-c85034870506');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('8b45cd7b-a71f-4bdc-b5c4-5b111a0e90f6', 'Tezos Signature', 'Tezos Signature', '50033121-1ddd-481f-a352-c85034870506');

INSERT INTO category (id, name, description) VALUES ('47c74cc0-116d-4ed8-89ac-37ed8a919b6d', 'Construction', 'Construction source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('8f3fb4e5-62b5-4b50-b137-494e91fe740a', 'Construction Heavy Equipment', 'Construction Heavy Equipment', '47c74cc0-116d-4ed8-89ac-37ed8a919b6d');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('179e924a-916d-412b-a6ce-6f6210b8aca1', 'Construction Material', 'Construction Material', '47c74cc0-116d-4ed8-89ac-37ed8a919b6d');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('9b1e5ff3-4571-49e2-9347-df3ad386d455', 'Construction Role', 'Construction Role', '47c74cc0-116d-4ed8-89ac-37ed8a919b6d');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('f5dc6cbe-6968-479d-9b77-3ac677434887', 'Construction Standard Cost Code', 'Construction Standard Cost Code', '47c74cc0-116d-4ed8-89ac-37ed8a919b6d');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('ce12ee2a-fd33-45b5-a2a9-5816590df44c', 'Construction Subcontract Category', 'Construction Subcontract Category', '47c74cc0-116d-4ed8-89ac-37ed8a919b6d');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('2266c1a9-8ffb-42ce-afe4-fc706dba7f20', 'Construction Trade', 'Construction Trade', '47c74cc0-116d-4ed8-89ac-37ed8a919b6d');

INSERT INTO category (id, name, description) VALUES ('82a13564-8439-484f-80e6-fa5ca4efd361', 'Commerce', 'Commerce source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('ba1dd619-70e8-4d60-93ad-e6c5c8c410eb', 'Credit Card #', 'Credit Card #', '82a13564-8439-484f-80e6-fa5ca4efd361');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('53adfaaa-1d13-4aca-91c7-7e84bdd528ca', 'Credit Card Type', 'Credit Card Type', '82a13564-8439-484f-80e6-fa5ca4efd361');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('7077b861-b965-4a3e-a8d1-0863c88a37c6', 'Currency', 'Currency', '82a13564-8439-484f-80e6-fa5ca4efd361');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('b9238d36-5a33-499f-9291-aa58457390a9', 'Currency Code', 'Currency Code', '82a13564-8439-484f-80e6-fa5ca4efd361');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('ec59c20f-5532-4dba-a7dd-e181dc0dbfd3', 'Department (Retail)', 'Department (Retail)', '82a13564-8439-484f-80e6-fa5ca4efd361');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('416ab80a-1da3-4a29-bfd1-e22e4eab5ebb', 'Money', 'Money', '82a13564-8439-484f-80e6-fa5ca4efd361');

INSERT INTO category (id, name, description) VALUES ('b124415b-ed6f-4d05-afad-3587832b0eb7', 'Car', 'Car source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('fed3f9dc-500b-4847-b273-43745ce9f41a', 'Car VIN', 'Car VIN', 'b124415b-ed6f-4d05-afad-3587832b0eb7');

INSERT INTO category (id, name, description) VALUES ('276094fb-a8e6-418e-8757-65470dbffd08', 'Basic', 'Basic source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('71813c8f-b171-4d40-9a0e-b0f4fc2a435b', 'Binomial Distribution', 'Binomial Distribution', '276094fb-a8e6-418e-8757-65470dbffd08');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('1bcda47f-327c-4874-ab0d-2ba10dbd73c3', 'Blank', 'Blank', '276094fb-a8e6-418e-8757-65470dbffd08');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('d7d3b0c7-707e-4b66-a94c-86ee15a3fc96', 'Boolean', 'Boolean', '276094fb-a8e6-418e-8757-65470dbffd08');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('279db829-f411-451d-93ab-0204cb261402', 'Color', 'Color', '276094fb-a8e6-418e-8757-65470dbffd08');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('dbd189e4-568c-409a-bb6a-de9483d88f35', 'Custom List', 'Custom List', '276094fb-a8e6-418e-8757-65470dbffd08');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('ea9d4db7-133a-41ea-9bcb-275fe5fb5ceb', 'Dataset Column', 'Dataset Column', '276094fb-a8e6-418e-8757-65470dbffd08');

INSERT INTO category (id, name, description) VALUES ('d157db0f-91e9-4ee2-8ba7-736b4413205b', 'Advanced', 'Advanced source');

INSERT INTO generate_type (id, code, description, category_id) VALUES ('b127d9b1-0847-4205-8d1d-e854ae3b7dda', 'Character Sequence', 'Character Sequence', 'd157db0f-91e9-4ee2-8ba7-736b4413205b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('c37de0ba-6a59-4064-a00f-f931d2966449', 'Digit Sequence', 'Digit Sequence', 'd157db0f-91e9-4ee2-8ba7-736b4413205b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('30028579-6d45-46da-8a2f-c7a4c55243a9', 'Formula', 'Formula', 'd157db0f-91e9-4ee2-8ba7-736b4413205b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('7a334a0a-04ae-4fd5-a9d1-0a0fde19a23a', 'JSON Array', 'JSON Array', 'd157db0f-91e9-4ee2-8ba7-736b4413205b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('fdbd2bde-4dd1-40cf-9818-a25268d2013b', 'Naughty String', 'Naughty String', 'd157db0f-91e9-4ee2-8ba7-736b4413205b');
INSERT INTO generate_type (id, code, description, category_id) VALUES ('34a113cc-a76e-4225-ae43-4a9ab7b271b3', 'Regular Expression', 'Regular Expression', 'd157db0f-91e9-4ee2-8ba7-736b4413205b');