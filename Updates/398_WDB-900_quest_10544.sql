-- q.10544 'A Curse Upon Both of Your Clans!'
-- Q. Scripted
-- *NOTE* Q reQ. several server side spells (we have 0)
-- 36885 - Summon Bloodmaul Evil Spirit 
-- 34631 - Summon Bladespire Evil Spirit
-- 36683 - Summon Cursed Spirit -- Instant Summons a cursed spirit to attack the character if the ogre building that they used the wicked strong fetish on was already cursed.  
-- 32581 - Ogre Building Bunny Summoner 000-A -- Instant Summons Ogre Building Bunny Small. (summons - 21456 'Ogre Building Bunny Small') 
-- 36949 - Ogre Building Bunny Summoner 000-B -- Instant Summons the Ogre Building Bunny Large, 35 units up. (summons - 21351 'Ogre Building Bunny Large')
-- 36977 - Ogre Building Bunny Summoner 000-C -- Instant Summons Ogre Building Cursed Spirit Bunny. (summons - 21498 'Ogre Building Cursed Spirit Bunny')
-- Quest fixed using DB scripts.. It will be corrected when we'll get all missing spells.

-- Update models (source wotlk-db)
UPDATE `creature_template` SET `ModelId1`='16946' WHERE `Entry`=21456;
UPDATE `creature_template` SET `ModelId2`='14501' WHERE `Entry`=21351;
UPDATE `creature_template` SET `ModelId2`='11686' WHERE `Entry`=21498;


-- Ogre Building Entrance - object corrected
DELETE FROM gameobject_template WHERE entry = 300104; -- Temp Removed
DELETE FROM gameobject_template WHERE entry = 184820;
INSERT INTO gameobject_template (entry, type, displayId, name, IconName, castBarCaption, faction, flags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, mingold, maxgold, ScriptName) VALUES
(184820, 8, 0,'Ogre Building Entrance','','',0,0,1,1428,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Update for new Template
UPDATE gameobject SET id = 184820 WHERE id = 300104;
-- Missing added - WoTLKDB FREE guids used
DELETE FROM gameobject WHERE guid BETWEEN 200034 AND 200038;
DELETE FROM game_event_gameobject WHERE guid BETWEEN 200034 AND 200038;
DELETE FROM gameobject_battleground WHERE guid BETWEEN 200034 AND 200038;
INSERT INTO gameobject (guid, id, map, spawnmask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(200034, 184820, 530, 1,2328.68, 6565.36, 3.76581, 0.403992, 0, 0, 0.200625, 0.979668, 180, 180, 0, 1),
(200035, 184820, 530, 1,2605.63, 6665.63, 22.772, 4.12287, 0, 0, 0.882032, -0.471189, 180, 180, 0, 1),
(200036, 184820, 530, 1,2496.11, 6718.06, 5.59927, 4.2289, 0, 0, 0.855825, -0.517265, 180, 180, 0, 1),
(200037, 184820, 530, 1,1586.98, 6286.41, 3.85049, 1.3628, 0, 0, 0.796984, -0.604, 180, 180, 0, 1),
(200038, 184820, 530, 1,1537.23, 6316.93, 3.32023, 0.532731, 0, 0, 0.248469, 0.96864, 180, 180, 0, 1);

-- ID - 32580 Wicked Strong Fetish
DELETE FROM dbscripts_on_spell WHERE id = 32580;
INSERT INTO dbscripts_on_spell (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(32580,0,31,21352,15,0,0,0,0,0,0,0,0,0,0,0,0,'search for 21352'),
(32580,1,20,2,0,0,21352,20,7,0,0,0,0,0,0,0,0,'movement chenged to 2:waypoint'),
(32580,2,31,21498,20,0,0,0,0,0,0,0,0,0,0,0,0,'search for 21498'), -- if buldings are cursed already.. we can summon another creature
(32580,3,35,5,25,0,21498,25,7,0,0,0,0,0,0,0,0,'SEND_AI_EVENT');

-- Updates
UPDATE creature_template SET MinLevel = 70, MaxLevel = 70, Expansion = 1, MinLevelHealth = 6986, MaxLevelHealth = 6986, Armor = 6719, MeleeBaseAttackTime = 2000, RangedBaseAttackTime = 2000, MeleeAttackPower = 304, MinMeleeDmg = 252, MaxMeleeDmg = 357, UnitFlags = 33554432, MovementType = 0 WHERE Entry IN (21456,21351,21498);
UPDATE creature_template SET MovementType = 1 WHERE Entry = 21449;

-- Ogre Building Bunny Summoner
DELETE FROM creature_movement WHERE id IN (74755,74756,74759,74760,74761,74762,74763,74764,74766,74767,74769,74771);
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(74755,1,1544.21,6321.05,2.36069, 5000, 2135201, 0.593412),
(74756,1,1589.61,6294.26,2.97764, 5000, 2135202, 1.27409),
(74759,1,2318.35,6650.72,16.8051, 5000, 2135203, 5.74213),
(74760,1,2330.77,6719.11,16.5635, 5000, 2135204, 5.63741),
(74761,1,2381.57,6742.27,16.7087, 5000, 2135205, 4.90438),
(74762,1,2494.49,6713.98,4.47157, 5000, 2135206, 4.29351),
(74763,1,2603.42,6665,22.797, 5000, 2135207, 4.13643),
(74764,1,2700.36,6601.66,22.8472, 5000, 2135208, 3.40339),
(74766,1,2700.19,6514.47,2.13838, 5000, 2135209, 2.11185),
(74767,1,2597.69,6505.88,1.66538, 5000, 2135210, 1.09956),
(74769,1,2462.47,6544.21,1.93072, 5000, 2135211, 0.541052),
(74771,1,2332.92,6567.22,3.77855, 5000, 2135212, 0.453786);
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 2135201 AND 2135212;
INSERT INTO dbscripts_on_creature_movement (id,delay,command,datalong,datalong2,datalong3,buddy_entry,search_radius,data_flags,dataint,dataint2,dataint3,dataint4,x,y,z,o,comments) VALUES
-- #1 (outpost)
(2135201,0,10,21452,300000,0,0,0,0x08,0,0,0,0,1544.21,6321.05,2.36069,0.593412,'summon - Bloodmaul Evil Spirit'), 
(2135201,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135201,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135201,2,10,21456,120000,0,0,0,0x08,0,0,0,0,1544.21,6321.05,2.36069,0.593412,'summon - Ogre Building Bunny Small'), 
(2135201,2,10,21351,120000,0,0,0,0x08,0,0,0,0,1544.21,6321.05,37.36069,0.593412,'summon - Ogre Building Bunny Large'), 
(2135201,2,10,21498,120000,0,0,0,0x08,0,0,0,0,1544.21,6321.05,2.36069,0.593412,'summon - Ogre Building Cursed Spirit Bunny'),
-- #2 (outpost)
(2135202,0,10,21452,300000,0,0,0,0x08,0,0,0,0,1589.61,6294.26,2.97764,1.27409,'summon - Bloodmaul Evil Spirit'), 
(2135202,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135202,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135202,2,10,21456,120000,0,0,0,0x08,0,0,0,0,1589.61,6294.26,2.97764,1.27409,'summon - Ogre Building Bunny Small'), 
(2135202,2,10,21351,120000,0,0,0,0x08,0,0,0,0,1589.61,6294.26,37.97764,1.27409,'summon - Ogre Building Bunny Large'), 
(2135202,2,10,21498,120000,0,0,0,0x08,0,0,0,0,1589.61,6294.26,2.97764,1.27409,'summon - Ogre Building Cursed Spirit Bunny'),
-- #3
(2135203,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2318.35,6650.72,16.8051,5.74213,'summon - Bladespire Evil Spirit'), 
(2135203,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135203,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135203,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2318.35,6650.72,16.8051,5.74213,'summon - Ogre Building Bunny Small'), 
(2135203,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2318.35,6650.72,51.8051,5.74213,'summon - Ogre Building Bunny Large'), 
(2135203,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2318.35,6650.72,16.8051,5.74213,'summon - Ogre Building Cursed Spirit Bunny'),
-- #4
(2135204,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2330.77,6719.11,16.5635,5.63741,'summon - Bladespire Evil Spirit'), 
(2135204,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135204,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135204,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2330.77,6719.11,16.5635,5.63741,'summon - Ogre Building Bunny Small'), 
(2135204,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2330.77,6719.11,51.5635,5.63741,'summon - Ogre Building Bunny Large'), 
(2135204,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2330.77,6719.11,16.5635,5.63741,'summon - Ogre Building Cursed Spirit Bunny'),
-- #5
(2135205,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2381.57,6742.27,16.7087,4.90438,'summon - Bladespire Evil Spirit'), 
(2135205,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135205,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135205,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2381.57,6742.27,16.7087,4.90438,'summon - Ogre Building Bunny Small'), 
(2135205,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2381.57,6742.27,51.7087,4.90438,'summon - Ogre Building Bunny Large'), 
(2135205,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2381.57,6742.27,16.7087,4.90438,'summon - Ogre Building Cursed Spirit Bunny'),
-- #6
(2135206,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2494.49,6713.98,4.47157,4.29351,'summon - Bladespire Evil Spirit'), 
(2135206,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135206,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135206,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2494.49,6713.98,4.47157,4.29351,'summon - Ogre Building Bunny Small'), 
(2135206,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2494.49,6713.98,39.47157,4.29351,'summon - Ogre Building Bunny Large'), 
(2135206,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2494.49,6713.98,4.47157,4.29351,'summon - Ogre Building Cursed Spirit Bunny'),
-- #7
(2135207,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2603.42,6665,22.797,4.13643,'summon - Bladespire Evil Spirit'), 
(2135207,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135207,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135207,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2603.42,6665,22.797,4.13643,'summon - Ogre Building Bunny Small'), 
(2135207,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2603.42,6665,57.797,4.13643,'summon - Ogre Building Bunny Large'), 
(2135207,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2603.42,6665,22.797,4.13643,'summon - Ogre Building Cursed Spirit Bunny'),
-- #8
(2135208,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2700.36,6601.66,22.8472,3.40339,'summon - Bladespire Evil Spirit'), 
(2135208,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135208,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135208,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2700.36,6601.66,22.8472,3.40339,'summon - Ogre Building Bunny Small'), 
(2135208,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2700.36,6601.66,57.8472,3.40339,'summon - Ogre Building Bunny Large'), 
(2135208,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2700.36,6601.66,22.8472,3.40339,'summon - Ogre Building Cursed Spirit Bunny'),
-- #9
(2135209,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2700.19,6514.47,2.13838,2.11185,'summon - Bladespire Evil Spirit'), 
(2135209,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135209,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135209,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2700.19,6514.47,2.13838,2.11185,'summon - Ogre Building Bunny Small'), 
(2135209,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2700.19,6514.47,37.13838,2.11185,'summon - Ogre Building Bunny Large'), 
(2135209,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2700.19,6514.47,2.13838,2.11185,'summon - Ogre Building Cursed Spirit Bunny'),
-- #10
(2135210,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2597.69,6505.88,1.66538,1.09956,'summon - Bladespire Evil Spirit'), 
(2135210,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135210,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135210,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2597.69,6505.88,1.66538,1.09956,'summon - Ogre Building Bunny Small'), 
(2135210,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2597.69,6505.88,36.66538,1.09956,'summon - Ogre Building Bunny Large'), 
(2135210,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2597.69,6505.88,1.66538,1.09956,'summon - Ogre Building Cursed Spirit Bunny'),
-- #11
(2135211,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2462.47,6544.21,1.93072,0.541052,'summon - Bladespire Evil Spirit'), 
(2135211,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135211,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135211,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2462.47,6544.21,1.93072,0.541052,'summon - Ogre Building Bunny Small'), 
(2135211,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2462.47,6544.21,36.93072,0.541052,'summon - Ogre Building Bunny Large'), 
(2135211,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2462.47,6544.21,1.93072,0.541052,'summon - Ogre Building Cursed Spirit Bunny'),
-- #12
(2135212,0,10,21446,300000,0,0,0,0x08,0,0,0,0,2332.92,6567.22,3.77855,0.453786,'summon - Bladespire Evil Spirit'), 
(2135212,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'movement chenged to 0:idle'),
(2135212,1,31,21456,10,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 21456'), -- if bunny is summoned already.. terminate (we dont want to double spawn)
(2135212,2,10,21456,120000,0,0,0,0x08,0,0,0,0,2332.92,6567.22,3.77855,0.453786,'summon - Ogre Building Bunny Small'), 
(2135212,2,10,21351,120000,0,0,0,0x08,0,0,0,0,2332.92,6567.22,3.77855,0.453786,'summon - Ogre Building Bunny Large'), 
(2135212,2,10,21498,120000,0,0,0,0x08,0,0,0,0,2332.92,6567.22,3.77855,0.453786,'summon - Ogre Building Cursed Spirit Bunny');

