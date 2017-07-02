-- ------------------------------
-- textid1-5 and text emotes if any
-- ------------------------------

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1484601,1486001,1482801,1482201,1043201,1043202,1043203,1484701,1482301,1482302,1486002,1484901,1961201,1961202,2104901,1797601,1797501,1842201,1842202,1484902,1799304,1799303,1761301,73801);
INSERT INTO `dbscripts_on_creature_movement`(`id`,`command`,`datalong`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`comments`) VALUES
-- creature_movement
(1484601,0,0,2000005023,0,0,0,''), -- 43671
(1486001,0,0,2000005024,2000005211,0,0,''), -- 43673
(1482801,0,0,2000005025,2000005212,0,0,''), -- 43679
(1482201,0,0,2000005026,2000005213,2000005227,2000005232,''), -- 45476
(1043201,0,0,2000005029,0,0,0,''), -- 48805
(1043202,0,0,2000005028,0,0,0,''), -- 48805
(1043203,0,0,2000005027,0,0,0,''), -- 48805
(1484701,0,0,2000005030,0,0,0,''), -- 49446
(1482301,0,0,2000005034,2000005217,0,0,''), -- 56348
(1482302,0,0,2000005033,2000005216,0,0,''), -- 56348
(1486002,0,0,2000005035,2000005218,0,0,''), -- 56625
(1484901,0,0,2000005048,2000005221,0,0,''), -- 70025
(1961201,0,0,2000005051,2000005222,0,0,''), -- 70037
(1961202,0,0,2000005050,0,0,0,''), -- 70037
(2104901,0,0,2000005452,2000005455,2000005456,0,''), -- 73921
(1797601,0,0,2000005550,0,0,0,''), -- 82986
(1797501,0,0,2000005554,2000005555,2000005556,2000005557,''), -- 82987
(1842201,0,0,2000005552,0,0,0,''), -- 83049/83055
(1842202,0,0,2000005553,0,0,0,''), -- 83049/83055
(1484902,0,0,2000005133,2000005223,0,0,''), -- 83350
(1799304,0,0,2000005559,0,0,0,''), -- 140328
(1799303,0,0,2000005558,0,0,0,''), -- 140329
-- creature_movement_template
(1761301,0,0,2000000802,0,0,0,''), -- 17613
(73801,0,0,2000009105,0,0,0,''), -- 738
(908301,0,0,2000005009,0,0,0,''); -- 9086 (Already had a script, use the same id)

UPDATE `creature_movement` SET `script_id`=1484601, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=43671 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1486001, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=43673 AND `point`=7;
UPDATE `creature_movement` SET `script_id`=1482801, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=43679 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1482201, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=45476 AND `point`=5;
UPDATE `creature_movement` SET `script_id`=1043201, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=48805 AND `point`=4;
UPDATE `creature_movement` SET `script_id`=1043202, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=48805 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1043203, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=48805 AND `point`=2;
UPDATE `creature_movement` SET `script_id`=1484701, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=49446 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1482301, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=56348 AND `point`=6;
UPDATE `creature_movement` SET `script_id`=1482302, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=56348 AND `point`=2;
UPDATE `creature_movement` SET `script_id`=1486002, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=56625 AND `point`=6;
UPDATE `creature_movement` SET `script_id`=1484901, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=70025 AND `point`=12;
UPDATE `creature_movement` SET `script_id`=1961201, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=70037 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1961202, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=70037 AND `point`=2;
UPDATE `creature_movement` SET `script_id`=2104901, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=73921 AND `point`=1;
UPDATE `creature_movement` SET `script_id`=2104901, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=73921 AND `point`=2;
UPDATE `creature_movement` SET `script_id`=2104901, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=73921 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1797601, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=82986 AND `point`=34;
UPDATE `creature_movement` SET `script_id`=1797501, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=82987 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1797501, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `id`=82987 AND `point`=7;
UPDATE `creature_movement` SET `script_id`=1842201, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=83049 AND `point`=1;
UPDATE `creature_movement` SET `script_id`=1842202, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=83049 AND `point`=3;
UPDATE `creature_movement` SET `script_id`=1842201, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=83055 AND `point`=2;
UPDATE `creature_movement` SET `script_id`=1842202, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=83055 AND `point`=4;
UPDATE `creature_movement` SET `script_id`=1484902, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=83350 AND `point`=13;
UPDATE `creature_movement` SET `script_id`=1799304, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=140328 AND `point`=4;
UPDATE `creature_movement` SET `script_id`=1799303, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `id`=140329 AND `point`=5;

UPDATE `creature_movement_template` SET `script_id`=1761301, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0, `emote`=0 WHERE `entry`=17613 AND `point`=9;
UPDATE `creature_movement_template` SET `script_id`=73801, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=738 AND `point`=2;
UPDATE `creature_movement_template` SET `script_id`=908301, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=9086 AND `point`=27; -- Had a script already

-- Do emotes in db_script_string instead
UPDATE db_script_string SET emote=15 WHERE entry IN(2000005452,2000005455,2000005456);
UPDATE db_script_string SET emote=25 WHERE entry IN(2000005050);
UPDATE db_script_string SET emote=4 WHERE entry IN(2000005550);
UPDATE db_script_string SET emote=69 WHERE entry IN(2000005554,2000005555,2000005556,2000005557);
UPDATE db_script_string SET emote=69 WHERE entry IN(2000000802);

-- Special cases:

-- Miss Danna. For some reason her texts were already converted at some point, but instead of changing the creature_movement_template she was given a guid path.
-- Delete the guid path and update the existing creature_movement_template with the scripts used in creature_movement.
DELETE FROM `creature_movement` WHERE `id`=84028;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=3513;
UPDATE `creature_movement_template` SET `script_id`=351301, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=20;
UPDATE `creature_movement_template` SET `script_id`=0, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=23;
UPDATE `creature_movement_template` SET `script_id`=0, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=24;
UPDATE `creature_movement_template` SET `script_id`=351302, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=38;
UPDATE `creature_movement_template` SET `script_id`=351303, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=39;
UPDATE `creature_movement_template` SET `script_id`=351304, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=41;
UPDATE `creature_movement_template` SET `script_id`=351305, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=57;
UPDATE `creature_movement_template` SET `script_id`=351306, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=58;
UPDATE `creature_movement_template` SET `script_id`=351307, `textid1`=0, `textid2`=0, `textid3`=0, `textid4`=0, `textid5`=0 WHERE `entry`=3513 AND `point`=59;

-- This guy is a follower of another NPC and isn't using his path. Delete it
DELETE FROM creature_movement WHERE id=87089;
DELETE FROM dbscripts_on_creature_movement WHERE id=351101;
DELETE FROM db_script_string WHERE entry=2000005168;

-- This guy already had script updated to creature_movement_template, but creature_movement waypoints were not removed
DELETE FROM `creature_movement` WHERE `id`=63614;
UPDATE `creature_template` SET `MovementType`=2 WHERE `entry`=17901;



