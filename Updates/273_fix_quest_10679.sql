UPDATE gameobject SET position_x=-3420.99, position_y=1373.18, position_z=257.523, orientation=3.14159, rotation2=1, rotation3=0.00000126759 WHERE guid=21611;
UPDATE gameobject_template SET size=2.5, Data0=57, Data1=21583 WHERE entry=185032;
DELETE FROM gameobject_loot_template WHERE entry=21583;
INSERT INTO gameobject_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id,comments) VALUES
(21583,30876,100,0,1,1,0,'Quenched Illidari-Bane Blade');
