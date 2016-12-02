-- script to summon Nightbane
DELETE FROM dbscripts_on_go_template_use WHERE id = 194092;
INSERT INTO dbscripts_on_go_template_use (id,delay,command,datalong,data_flags,comments) VALUES
(194092,0,15,31116,4,'cast Summon Nightbane');
-- missing temp spellfocus
DELETE FROM gameobject WHERE guid = 66164;
INSERT INTO gameobject VALUES
(66164, 300073, 532, 1, -11126.9, -1874.45, 91.4726, 0, 0, 0, 0, 1, 180, 0, 1);


