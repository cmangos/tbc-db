DELETE FROM creature_loot_template WHERE entry=17887; -- creature with 1 hp having drops for food/water/pots

-- quest Save princess silverpine
UPDATE gameobject_template SET data2=30*65536  WHERE entry=181928; -- make GO despawn

DELETE FROM creature_movement_template WHERE entry=17682;
INSERT INTO creature_movement_template(entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, orientation, model1, model2) VALUES
('17682', '1', '-2532.39', '-12301.5', '14.2525', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '2', '-2545.85', '-12304.7', '13.2974', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '3', '-2550.17', '-12304.7', '13.3473', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '4', '-2553.75', '-12306', '13.1851', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '5', '-2558.25', '-12307.2', '12.9351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '6', '-2560.25', '-12307.7', '12.4351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '7', '-2564.03', '-12308.3', '12.5844', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('17682', '8', '-2576.29', '-12302.8', '11.7896', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'); -- add missing waypoint data

UPDATE gossip_menu_option SET condition_id=15 WHERE menu_id=7368 AND id=0; -- corrected condition on draenei hunter trainer


