-- "has no delay and no delay despawn script"

UPDATE creature_movement_template SET waittime=1000 WHERE entry=1433 AND `point`=36;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=2983 AND `point`=31;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17635 AND `point`=14;
DELETE FROM creature_movement_template WHERE `point`=15 AND entry=17635;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=15553 AND `point`=5;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=15552 AND `point`=2 AND pathId=1;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=15552 AND `point`=5 AND pathId=0;
DELETE FROM creature_movement_template WHERE `point`=6 AND entry=15552;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17682 AND `point`=8;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=5901 AND `point`=6;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17243 AND `point`=18;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=19170 AND `point`=7 AND pathId=2;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=19170 AND `point`=7 AND pathId=3;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=19170 AND `point`=7 AND pathId=4;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=19170 AND `point`=8 AND pathId=5;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=19170 AND `point`=8 AND pathId=6;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=19170 AND `point`=8 AND pathId=7;

-- "has no delay but changes movegen"

UPDATE creature_movement_template SET script_id=2210201 WHERE entry=22102 AND `point`=7 AND pathId BETWEEN 1 AND 3;
UPDATE creature_movement_template SET waittime=0, script_id=0 WHERE entry=22102 AND `point`=6 AND pathId BETWEEN 1 AND 3;
UPDATE creature_movement_template SET script_id=2210201 WHERE entry=22102 AND `point`=10;
UPDATE creature_movement_template SET waittime=0, script_id=0 WHERE entry=22102 AND `point`=9;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=22102 AND script_id=2210201;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=1481 AND `point`=3 AND pathId=3;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=1483 AND `point`=5 AND pathId=1;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=22980 AND `point`=26 AND pathId=4;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=22980 AND `point`=1 AND pathId=4;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=22980 AND `point`=14 AND pathId=1;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17647 AND `point`=14;
DELETE FROM creature_movement_template WHERE `point`=15 AND entry=17647;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17995 AND `point`=14;
DELETE FROM creature_movement_template WHERE `point`=15 AND entry=17995;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17996 AND `point`=14;
DELETE FROM creature_movement_template WHERE `point`=15 AND entry=17996;

