REPLACE INTO game_event(`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES
('18','2011-01-28 02:00:00','2020-12-31 00:00:00','40320','6240','283','Call to Arms: Alterac Valley!'),
('19','2011-01-14 02:00:00','2020-12-31 00:00:00','40320','6240','284','Call to Arms: Warsong Gulch!'),
('20','2011-01-21 02:00:00','2020-12-31 00:00:00','40320','6240','285','Call to Arms: Arathi Basin!'),
('21','2011-01-07 02:00:00','2020-12-31 00:00:00','40320','6240','353','Call to Arms: Eye of the Storm!');

DELETE FROM game_event WHERE entry IN (45,46,47);

REPLACE INTO game_event(`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`) VALUES
('103','2018-03-02 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Terokkar Forest) - March 2018 - Building Stage 1'),
('104','2018-03-03 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Terokkar Forest) - March 2018 - Building Stage 2'),
('105','2018-03-05 00:00:01','2030-12-31 23:59:00','525600','8640','376','Darkmoon Faire (Terokkar Forest) - March 2018 - Darkmoon Faire Open'),

('106','2018-04-06 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Mulgore) - April 2018 - Building Stage 1'),
('107','2018-04-07 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Mulgore) - April 2018 - Building Stage 2'),
('108','2018-04-09 00:00:01','2030-12-31 23:59:00','525600','8640','375','Darkmoon Faire (Mulgore) - April 2018 - Darkmoon Faire Open'),

('109','2018-05-04 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Elwynn Forest) - May 2018 - Building Stage 1'),
('110','2018-05-05 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Elwynn Forest) - May 2018 - Building Stage 2'),
('111','2018-05-07 00:00:01','2030-12-31 23:59:00','525600','8640','374','Darkmoon Faire (Elwynn Forest) - May 2018 - Darkmoon Faire Open'),

('76','2018-06-01 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Terokkar Forest) - June 2018 - Building Stage 1'),
('77','2018-06-02 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Terokkar Forest) - June 2018 - Building Stage 2'),
('78','2018-06-04 00:00:01','2030-12-31 23:59:00','525600','8640','376','Darkmoon Faire (Terokkar Forest) - June 2018 - Darkmoon Faire Open'),

('79','2018-07-06 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Mulgore) - July 2018 - Building Stage 1'),
('80','2018-07-07 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Mulgore) - July 2018 - Building Stage 2'),
('81','2018-07-09 00:00:01','2030-12-31 23:59:00','525600','8640','375','Darkmoon Faire (Mulgore) - July 2018 - Darkmoon Faire Open'),

('82','2018-08-03 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Elwynn Forest) - August 2018 - Building Stage 1'),
('83','2018-08-04 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Elwynn Forest) - August 2018 - Building Stage 2'),
('84','2018-08-06 00:00:01','2030-12-31 23:59:00','525600','8640','374','Darkmoon Faire (Elwynn Forest) - August 2018 - Darkmoon Faire Open'),

('85','2018-09-07 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Terokkar Forest) - September 2018 - Building Stage 1'),
('86','2018-09-08 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Terokkar Forest) - September 2018 - Building Stage 2'),
('87','2018-09-10 00:00:01','2030-12-31 23:59:00','525600','8640','376','Darkmoon Faire (Terokkar Forest) - September 2018 - Darkmoon Faire Open'),

('88','2018-10-05 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Mulgore) - October 2018 - Building Stage 1'),
('89','2018-10-06 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Mulgore) - October 2018 - Building Stage 2'),
('90','2018-10-08 00:00:01','2030-12-31 23:59:00','525600','8640','375','Darkmoon Faire (Mulgore) - October 2018 - Darkmoon Faire Open'),

('91','2018-11-02 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Elwynn Forest) - November 2018 - Building Stage 1'),
('92','2018-11-03 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Elwynn Forest) - November 2018 - Building Stage 2'),
('93','2018-11-05 00:00:01','2030-12-31 23:59:00','525600','8640','374','Darkmoon Faire (Elwynn Forest) - November 2018 - Darkmoon Faire Open'),

('94','2017-12-07 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Terokkar Forest) - December 2018 - Building Stage 1'),
('95','2017-12-08 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Terokkar Forest) - December 2018 - Building Stage 2'),
('96','2017-12-10 00:00:01','2030-12-31 23:59:00','525600','8640','376','Darkmoon Faire (Terokkar Forest) - December 2018 - Darkmoon Faire Open'),

('97','2018-01-04 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Mulgore) - January 2019 - Building Stage 1'),
('98','2018-01-05 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Mulgore) - January 2019 - Building Stage 2'),
('99','2018-01-07 00:00:01','2030-12-31 23:59:00','525600','8640','375','Darkmoon Faire (Mulgore) - January 2019 - Darkmoon Faire Open'),

('100','2018-02-01 00:00:01','2030-12-31 23:59:00','525600','4320','0','Darkmoon Faire (Elwynn Forest) - February 2019 - Building Stage 1'),
('101','2018-02-02 00:00:01','2030-12-31 23:59:00','525600','2880','0','Darkmoon Faire (Elwynn Forest) - February 2019 - Building Stage 2'),
('102','2018-02-04 00:00:01','2030-12-31 23:59:00','525600','8640','374','Darkmoon Faire (Elwynn Forest) - February 2019 - Darkmoon Faire Open');


