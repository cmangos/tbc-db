-- Equipment for 'Master Kelerun Bloodmourn <Blood Knight>'
DELETE FROM creature_equip_template WHERE entry = 111;
INSERT INTO creature_equip_template (entry, equipentry1, equipentry2, equipentry3) VALUES    
(111,23673,24038,0);
UPDATE creature_template SET equipmentTemplateid = 111 WHERE entry = 17807;

