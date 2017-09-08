-- Creatures with entry up to 20 will never need to use dbscripts, so set generic emote scripts as 1XXX, where XXX is the emote id.
-- STATE_USESTANDING with ID 69 would then be dbscript 1069.
-- Populate these over time. If we fill them all in we will get the unused dbscript error in logs
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` BETWEEN 1001 AND 1378;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1001,0,1,1,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_TALK',0,0,0,0),
(1005,0,1,5,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_EXCLAMATION',0,0,0,0),
(1006,0,1,6,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_QUESTION',0,0,0,0),
(1007,0,1,7,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_EAT',0,0,0,0),
(1010,0,1,10,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_DANCE',0,0,0,0),
(1011,0,1,11,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_LAUGH',0,0,0,0),
(1015,0,1,15,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_ROAR',0,0,0,0),
(1025,0,1,25,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_POINT',0,0,0,0),
(1028,0,1,28,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_WORK_SHEATHED',0,0,0,0),
(1036,0,1,36,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_ATTACK1H',0,0,0,0),
(1043,0,1,43,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - ONESHOT_PARRYSHIELD',0,0,0,0),
(1069,0,1,69,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_USESTANDING',0,0,0,0),
(1133,0,1,133,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_USESTANDING_NOSHEATHE',0,0,0,0),
(1173,0,1,173,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_WORK',0,0,0,0),
(1233,0,1,233,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_WORK_MINING',0,0,0,0),
(1378,0,1,378,0,0,0,0,0,0,0,0,0,'GENERIC EMOTE - STATE_TALK',0,0,0,0);

-- Only where emote is the only command executed
UPDATE creature_movement_template SET script_id=emote+1000, emote=0 WHERE emote!=0 AND script_id=0 AND textid1=0 AND textid2=0 AND textid3=0 AND textid4=0 AND textid5=0 AND spell=0 AND model1=0 AND model2=0;
UPDATE creature_movement SET script_id=emote+1000, emote=0 WHERE emote!=0 AND script_id=0 AND textid1=0 AND textid2=0 AND textid3=0 AND textid4=0 AND textid5=0 AND spell=0 AND model1=0 AND model2=0;

-- ----------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(8508001) AND command=1;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(8508001,0,1,69,0,0,0,0,0,0,0,0,0,'Spectral Stable Hand - STATE_USESTANDING',0,0,0,0);
UPDATE creature_movement SET emote=0 WHERE id=85085;

-- ---------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(8298601,8298602,8298603) AND command=1 AND delay=0;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(8298601,0,1,66,0,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Salute',0,0,0,0),
(8298602,0,1,66,0,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Salute',0,0,0,0),
(8298603,0,1,66,0,0,0,0,0,0,0,0,0,'Commander Sarannis (Botanica) - Salute',0,0,0,0);
UPDATE creature_movement SET emote=0 WHERE id=82986;

-- ---------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1842203);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1842203,0,15,34254,0,0,0,0,0,0,0,0,0,'Sunseeker Botanist - Cast Rejuvenate Plant',0,0,0,0);
UPDATE creature_movement SET script_id=1842203, spell=0 WHERE id=83049 AND point=2;
UPDATE creature_movement SET script_id=1842203, spell=0 WHERE id=83055 AND point=3;

-- ---------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1761310) AND command=1;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1761310,0,1,69,0,0,0,0,0,0,0,0,0,'Apprentice Darius - STATE_USESTANDING',0,0,0,0);
UPDATE creature_movement_template SET emote=0 WHERE entry=17613 AND point=10;

-- ---------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(1536001);
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1536001,0,20,0,0,0,0,0,0,0,0,0,0,'* Baby Murloc - Set Movetype Idle',0,0,0,0),
(1536001,0,1,10,0,0,0,0,0,0,0,0,0,'* Baby Murloc - STATE_DANCE',0,0,0,0),
(1536001,0,15,32041,0,0,0,0,0,0,0,0,0,'* Baby Murloc - Cast Baby Murloc (Zangarmarsh version)',0,0,0,0);
UPDATE creature_movement_template SET emote=0, spell=0, script_id=1536001 WHERE entry IN(15356,15357,15359,15360) AND script_id=3;

-- -------
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN(351301,351304,351307) AND delay=0;
INSERT INTO `dbscripts_on_creature_movement` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(351301,0,1,1,0,0,0,0,0,0,0,0,0,'Miss Danna - ONESHOT_TALK',0,0,0,0),
(351304,0,1,1,0,0,0,0,0,0,0,0,0,'Miss Danna - ONESHOT_TALK',0,0,0,0),
(351307,0,1,1,0,0,0,0,0,0,0,0,0,'Miss Danna - ONESHOT_TALK',0,0,0,0);
UPDATE creature_movement_template SET emote=0 WHERE entry=3513 AND point IN(20,41,59);



