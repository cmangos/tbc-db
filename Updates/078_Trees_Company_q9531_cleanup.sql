UPDATE creature_template SET UnitFlags=33280 WHERE entry=17243;
UPDATE creature_template SET UnitFlags=768 WHERE entry=17318;
UPDATE dbscripts_on_event SET delay=1 WHERE id=10675 AND delay=0 AND command=10 AND datalong=17318;
UPDATE dbscripts_on_event SET delay=1,datalong2=99000 WHERE id=10675 AND delay=0 AND command=10 AND datalong=17243;
UPDATE dbscripts_on_event SET delay=2 WHERE id=10675 AND delay=1 AND command=29;
DELETE FROM dbscripts_on_event WHERE id=10675 AND delay=0 AND command=31;
INSERT INTO dbscripts_on_event VALUES
(10675,0,31,17318,150,0,0,8,0,0,0,0,0,0,0,0,'Terminate script if already summoned');


