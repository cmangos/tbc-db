UPDATE gameobject_template SET data3=1,data2=0 WHERE entry in(123330,123331,123333,123332); -- Merchant Coast Buccaneers strongboxes dont despawn due to wrong GO template data

DELETE FROM spell_script_target WHERE entry IN(30659);
INSERT INTO spell_script_target VALUES(30659,1,17281,0); -- spell should only target specific mobs

