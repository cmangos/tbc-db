###########################
# Missing CompleteScripts #
###########################

-- UDB: The Legend of Stalvan (67)
UPDATE quest_template SET CompleteScript = 67 WHERE entry = 67;

DELETE FROM dbscripts_on_quest_end WHERE id = 67;
INSERT INTO dbscripts_on_quest_end VALUES
(67, 0, 10, 2044, 300000, 0, 0, 0, 0, 0, 0, 0, -10953.3, 1568.47, 46.978, 3.392, '');

-- ClassicDB: Arugal's Folly (99, 422, 423, 424), Prove Your Worth (421), Arugal Must Die (1014)
UPDATE quest_template SET CompleteScript = 99 WHERE entry = 99;
UPDATE quest_template SET CompleteScript = 421 WHERE entry = 421;
UPDATE quest_template SET CompleteScript = 422 WHERE entry = 422;
UPDATE quest_template SET CompleteScript = 423 WHERE entry = 423;
UPDATE quest_template SET CompleteScript = 424 WHERE entry = 424;
UPDATE quest_template SET CompleteScript = 1014 WHERE entry = 1014;

DELETE FROM dbscripts_on_quest_end WHERE id IN (99,421,422,423,424,1014);
INSERT INTO dbscripts_on_quest_end VALUES
(99, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player'),
(421, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player'),
(422, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player'),
(423, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player'),
(424, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player'),
(1014, 0, 15, 8097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell Arcane Intellect on Player');

-- ClassicDB: The Defias Brotherhood (166)
UPDATE quest_template SET CompleteScript = 166 WHERE entry = 166;

DELETE FROM dbscripts_on_quest_end WHERE id = 166;
INSERT INTO dbscripts_on_quest_end VALUES
(166, 1, 0, 1, 0, 0, 0, 0, 2000000028, 0, 0, 0, 0, 0, 0, 0, ''),
(166, 1, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gryan Shout Emote on Completion');

DELETE FROM db_script_string WHERE entry = 2000000028;
INSERT INTO db_script_string VALUES 
(2000000028, 'The People of Westfall salute $N, a brave and valiant defender of freedom.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);

-- ClassicDB: A Dark Threat Looms (283)
UPDATE quest_template SET CompleteScript = 283 WHERE entry = 283;

DELETE FROM dbscripts_on_quest_end WHERE id = 283;
INSERT INTO dbscripts_on_quest_end VALUES
(283, 0, 0, 6, 0, 0, 0, 0, 2000009019, 0, 0, 0, 0, 0, 0, 0, ''),
(283, 0, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hinderwier VII Emote on Completion');

DELETE FROM db_script_string WHERE entry = 2000009019;
INSERT INTO db_script_string VALUES 
(2000009019, 'The Stonewrought Dam has been saved! Three cheers for $N!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, NULL);

-- ClassicDB: Patrol Schedules (330)
UPDATE quest_template SET CompleteScript = 330 WHERE entry = 330;

DELETE FROM dbscripts_on_quest_end WHERE id = 330;
INSERT INTO dbscripts_on_quest_end VALUES
(330, 5, 10, 1421, 600000, 0, 0, 0, 0, 0, 0, 0, -11319.1, -201.22, 75.782, 1.1387, '');

-- ClassicDB: Harlan Needs a Resupply (333)
UPDATE quest_template SET CompleteScript = 333 WHERE entry = 333;

UPDATE creature_template SET MovementType = 2 WHERE entry = 1433;

DELETE FROM dbscripts_on_quest_end WHERE id = 333;
INSERT INTO dbscripts_on_quest_end VALUES
(333, 1, 0, 0, 0, 0, 0, 0, 2000000139, 2000000140, 0, 0, 0, 0, 0, 0, 'rema talk'),
(333, 5, 10, 1433, 600000, 0, 0, 8, 0, 0, 0, 0, -8765.4, 717.344, 99.5342, 3.88159, 'spawn corbett');

DELETE FROM db_script_string WHERE entry IN (2000000139, 2000000140);
INSERT INTO db_script_string VALUES
(2000000139, 'Corbett, dear. Harlan needs a load of knitted shirts and pants as soon as we can manage.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000140, 'Corbett, you there? Harlan needs another load of knitted goods. Can you take it to him?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL); 

-- ClassicDB: A Noble Brew (336)
UPDATE quest_template SET CompleteScript = 336 WHERE entry = 336;

DELETE FROM dbscripts_on_quest_end WHERE id = 336;
INSERT INTO dbscripts_on_quest_end VALUES
(336, 2, 0, 0, 0, 0, 0, 0, 2000009020, 0, 0, 0, 0, 0, 0, 0, ''),
(336, 4, 0, 0, 0, 0, 0, 0, 2000009021, 0, 0, 0, 0, 0, 0, 0, ''),
(336, 6, 15, 2596, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009020,2000009021);
INSERT INTO db_script_string VALUES
(2000009020, 'My, that Black Claw stout packs quite a punch!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000009021, 'I feel... dizzy. It''s so hot... in... here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: Fields of Grief (407)
UPDATE quest_template SET CompleteScript = 407 WHERE entry = 407;

DELETE FROM dbscripts_on_quest_end WHERE id = 407;
INSERT INTO dbscripts_on_quest_end VALUES
(407, 0, 0, 0, 0, 0, 0, 0, 2000009022, 0, 0, 0, 0, 0, 0, 0, ''),
(407, 3, 15, 3287, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(407, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2287.97, 236.253, 27.0892, 2.6613, ''),
(407, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2292, 239.481, 27.0892, 0.693878, ''),
(407, 9, 0, 0, 0, 0, 0, 0, 2000009023, 0, 0, 0, 0, 0, 0, 0, ''),
(407, 13, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2292.52, 235.226, 27.0892, 4.8345, ''),
(407, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2288.96, 237.96, 27.0892, 2.48773, ''),
(407, 19, 15, 5, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009022,2000009023);
INSERT INTO db_script_string VALUES
(2000009022, 'I... I... don\'t... feel... right...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000009023, 'My mind... my flesh... I\'m... rotting... !', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: A New Plague (492)
UPDATE quest_template SET CompleteScript = 492 WHERE entry = 492;

DELETE FROM dbscripts_on_quest_end WHERE id = 492;
INSERT INTO dbscripts_on_quest_end VALUES
(492, 2, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(492, 6, 15, 5, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- ClassicDB: Elixir of Agony (524)
UPDATE quest_template SET CompleteScript = 524 WHERE entry = 524;

DELETE FROM dbscripts_on_quest_end WHERE id = 524;
INSERT INTO dbscripts_on_quest_end VALUES
(524, 1, 9, 30031, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn Keg'),
(524, 2, 9, 150041, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spawn Keg Smoke'),
(524, 4, 3, 0, 0, 2284, 15891, 16, 0, 0, 0, 0, 0.524, -944.41, 61.93, 1.66, 'Move first'),
(524, 4, 3, 0, 0, 2284, 15893, 16, 0, 0, 0, 0, 0.439, -940.84, 61.93, 4.94, 'Move second'),
(524, 4, 3, 0, 0, 2284, 15892, 16, 0, 0, 0, 0, -1.632, -942.43, 61.93, 6.14, 'Move third'),
(524, 7, 15, 5, 0, 2284, 15891, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill first'),
(524, 8, 15, 5, 0, 2284, 15893, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill second'),
(524, 9, 15, 5, 0, 2284, 15892, 17, 0, 0, 0, 0, 0, 0, 0, 0, 'Kill third');

DELETE FROM gameobject WHERE guid = 150041;
INSERT INTO gameobject VALUES
(150041, 1730, 0, 1, 0.437117, -942.794, 61.9384, -2.54818, 0, 0, 0, 0, -10, 100, 1);

-- ClassicDB: Voodoo Dues (609)
UPDATE quest_template SET CompleteScript = 609 WHERE entry = 609;

DELETE FROM dbscripts_on_quest_end WHERE id = 609;
INSERT INTO dbscripts_on_quest_end VALUES
(609, 1, 0, 2, 0, 0, 0, 0, 2000009024, 0, 0, 0, 0, 0, 0, 0, ''),
(609, 2, 0, 0, 0, 0, 0, 0, 2000009025, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009024,2000009025);
INSERT INTO db_script_string VALUES
(2000009024, '%s tries opening Maury''s Clubbed Foot...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, NULL),
(2000009025, 'Bah! $N, this foot won''t budge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: Zanzil's Secret (621)
UPDATE quest_template SET CompleteScript = 621 WHERE entry = 621;

DELETE FROM dbscripts_on_quest_end WHERE id = 621;
INSERT INTO dbscripts_on_quest_end VALUES
(621, 1, 0, 0, 0, 0, 0, 0, 2000000130, 0, 0, 0, 0, 0, 0, 0, ''),
(621, 2, 0, 0, 0, 0, 0, 0, 2000000131, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000130,2000000131);
INSERT INTO db_script_string VALUES
(2000000130, 'Thank you, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(2000000131, 'I\'m sure I can find a use for this mixture...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: Message in a Bottle (630)
UPDATE quest_template SET CompleteScript = 630 WHERE entry = 630;

DELETE FROM dbscripts_on_quest_end WHERE id = 630;
INSERT INTO dbscripts_on_quest_end VALUES
(630, 2, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(630, 5, 0, 0, 0, 0, 0, 0, 2000009026, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009026);
INSERT INTO db_script_string VALUES
(2000009026, 'Thank you again for your aid. May the wind always be at your back during your travels.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: The Broken Sigil (640)
UPDATE quest_template SET CompleteScript = 640 WHERE entry = 640;

DELETE FROM dbscripts_on_quest_end WHERE id = 640;
INSERT INTO dbscripts_on_quest_end VALUES
(640, 1, 15, 4093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(640, 6, 0, 0, 0, 0, 0, 0, 2000009027, 0, 0, 0, 0, 0, 0, 0, ''); 

DELETE FROM db_script_string WHERE entry IN (2000009027);
INSERT INTO db_script_string VALUES
(2000009027, 'Easier than I expected... the sigil of Thoradin is whole, once again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: Sunken Treasure (670)
UPDATE quest_template SET CompleteScript = 670 WHERE entry = 670;

DELETE FROM dbscripts_on_quest_end WHERE id = 670;
INSERT INTO dbscripts_on_quest_end VALUES
(670, 1, 0, 0, 0, 0, 0, 0, 2000005088, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000005088);
INSERT INTO db_script_string VALUES
(2000005088, 'Wait, $N!!! It looks like we\'re going to need some help here...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- ClassicDB: Guile of the Raptor (702)
UPDATE quest_template SET CompleteScript = 702 WHERE entry = 702;

DELETE FROM dbscripts_on_quest_end WHERE id = 702;
INSERT INTO dbscripts_on_quest_end VALUES
(702, 0, 15, 4153, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 5, 0, 2, 0, 0, 0, 0, 2000000115, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 9, 0, 0, 0, 0, 0, 0, 2000000116, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 13, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(702, 14, 0, 0, 0, 0, 0, 0, 2000000117, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000115,2000000116,2000000117);
INSERT INTO db_script_string VALUES
(2000000115, '%s watches as his blood begins to stir, and the guile of the raptor slips through him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000116, 'What is this power that flows through me? Is this the power of shamanism that Tor\'gan spoke of...?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000117, 'Amazing! I feel... renewed. My strength returns!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Poison Water (748)
UPDATE quest_template SET CompleteScript = 748 WHERE entry = 748;

DELETE FROM dbscripts_on_quest_end WHERE id = 748;
INSERT INTO dbscripts_on_quest_end VALUES
(748, 0, 15, 4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(748, 0, 0, 2, 0, 0, 0, 0, 2000000170, 0, 0, 0, 0, 0, 0, 0, ''), 
(748, 8, 0, 0, 3, 0, 0, 0, 2000000171, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000170,2000000171);
INSERT INTO db_script_string VALUES
(2000000170, '%s begins a rite of creation...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000171, 'I have created the totem. You, $N, must cleanse the well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '3', '0', NULL);

-- ClassicDB: Thunderhorn Totem (756)
UPDATE quest_template SET CompleteScript = 756 WHERE entry = 756;

DELETE FROM dbscripts_on_quest_end WHERE id = 756;
INSERT INTO dbscripts_on_quest_end VALUES
(756, 0, 15, 4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(756, 0, 0, 2, 0, 0, 0, 0, 2000000172, 0, 0, 0, 0, 0, 0, 0, ''),
(756, 8, 0, 0, 3, 0, 0, 0, 2000000173, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000172,2000000173);
INSERT INTO db_script_string VALUES
(2000000172, '%s creates a new totem...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000173, 'The totem is made, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '3', '0', NULL);

-- ClassicDB: Wildmane Totem (759)
UPDATE quest_template SET CompleteScript = 759 WHERE entry = 759;

DELETE FROM dbscripts_on_quest_end WHERE id = 759;
INSERT INTO dbscripts_on_quest_end VALUES
(759, 0, 15, 4983, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(759, 0, 0, 2, 0, 0, 0, 0, 2000000174, 0, 0, 0, 0, 0, 0, 0, ''),
(759, 8, 0, 0, 3, 0, 0, 0, 2000000175, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000174,2000000175);
INSERT INTO db_script_string VALUES
(2000000174, '%s transforms the items $N gave him into a totem of cleansing...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000175, 'The totem is made. The well may now be cleansed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '3', '0', NULL);

-- ClassicDB: Rite of Vision (771)
UPDATE quest_template SET CompleteScript = 771 WHERE entry = 771;

DELETE FROM dbscripts_on_quest_end WHERE id = 771;
INSERT INTO dbscripts_on_quest_end VALUES
(771, 0, 0, 2, 0, 0, 0, 0, 2000009028, 0, 0, 0, 0, 0, 0, 0, ''),
(771, 1, 15, 5026, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(771, 8, 0, 0, 0, 0, 0, 0, 2000009029, 0, 0, 0, 0, 0, 0, 0, ''); 

DELETE FROM db_script_string WHERE entry IN (2000009028,2000009029);
INSERT INTO db_script_string VALUES
(2000009028, '%s begins chanting as he mixes the well stones and ambercom before the Tribal Fire.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000009029, 'The Water of the Seers is ready for your consumption, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Altered Beings (880)
UPDATE quest_template SET CompleteScript = 880 WHERE entry = 880;

DELETE FROM dbscripts_on_quest_end WHERE id = 880;
INSERT INTO dbscripts_on_quest_end VALUES
(880, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- ClassicDB: Samophlange (902)
UPDATE quest_template SET CompleteScript = 902 WHERE entry = 902;

DELETE FROM dbscripts_on_quest_end WHERE id = 902;
INSERT INTO dbscripts_on_quest_end VALUES
(902, 1, 9, 6579, 13, 0, 0, 0, 0, 0, 0, 0, -901.311, -3758.08, 11.3853, 4.09334, ''),
(902, 2, 1, 173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(902, 8, 15, 13727, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(902, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- ClassicDB: Return to Onu (950)
UPDATE quest_template SET CompleteScript = 950 WHERE entry = 950;

DELETE FROM dbscripts_on_quest_end WHERE id = 950;
INSERT INTO dbscripts_on_quest_end VALUES
(950, 1, 0, 2, 0, 0, 0, 0, 2000009030, 0, 0, 0, 0, 0, 0, 0, ''),
(950, 4, 0, 2, 0, 0, 0, 0, 2000009031, 0, 0, 0, 0, 0, 0, 0, ''),
(950, 8, 0, 0, 0, 0, 0, 0, 2000009032, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009030,2000009031,2000009032);
INSERT INTO db_script_string VALUES
(2000009030, '%s studies the parchment from the Twilight Tome...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000009031, '%s is struck by unleashed magic!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000009032, 'Hmm...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: How Big a Threat? (985)
UPDATE quest_template SET CompleteScript = 986 WHERE entry = 985;
UPDATE quest_template SET PrevQuestId = 985 WHERE entry = 986;
-- needs testing, UDB also has almost identical script for 985

DELETE FROM dbscripts_on_quest_end WHERE id = 986;
INSERT INTO dbscripts_on_quest_end VALUES
(986, 0, 10, 3695, 56000, 0, 0, 0, 0, 0, 0, 0, 6408.39, 400.412, 12.0573, 6.09157, 'Grimclaw appears'),
(986, 2, 3, 0, 700, 3695, 50, 4, 0, 0, 0, 0, 6427.02, 404.78, 11.031, 5.1137, 'Grimclaw arrives'),
(986, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 4, 0, 0, 0, 0, 0, 0, 2000005384, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 5, 3, 0, 700, 3695, 50, 4, 0, 0, 0, 0, 6437.9, 370.24, 13.9411, 5.1137, 'Grimclaw enters'),
(986, 10, 3, 0, 0, 3695, 50, 4, 0, 0, 0, 0, 0, 0, 0, 4.3688, ''), 
(986, 11, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 11, 0, 2, 0, 3695, 10, 0, 2000005385, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 14, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 14, 0, 0, 0, 0, 0, 0, 2000005386, 0, 0, 0, 0, 0, 0, 0, ''), 
(986, 19, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 19, 0, 2, 0, 3695, 10, 0, 2000005387, 0, 0, 0, 0, 0, 0, 0, ''), 
(986, 24, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 24, 0, 0, 0, 0, 0, 0, 2000005388, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 29, 0, 2, 0, 0, 0, 0, 2000005389, 0, 0, 0, 0, 0, 0, 0, ''), 
(986, 30, 15, 6238, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 34, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 34, 0, 0, 0, 0, 0, 0, 2000005390, 0, 0, 0, 0, 0, 0, 0, ''), 
(986, 39, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 39, 0, 2, 0, 3695, 10, 0, 2000005391, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 44, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 44, 0, 0, 0, 0, 0, 0, 2000005392, 0, 0, 0, 0, 0, 0, 0, ''), 
(986, 49, 1, 1, 0, 3695, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 49, 0, 2, 0, 3695, 10, 0, 2000005393, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 54, 3, 0, 700, 3695, 50, 4, 0, 0, 0, 0, 6427.02, 404.78, 11.031, 5.1137, 'Grimclaw leaves'),
(986, 54, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(986, 54, 0, 0, 0, 0, 0, 0, 2000005394, 0, 0, 0, 0, 0, 0, 0, 'quest script end');

DELETE FROM db_script_string WHERE entry BETWEEN 2000005384 AND 2000005394;
INSERT INTO db_script_string VALUES
(2000005384, 'What was that noise? It sounded like a roar.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005385, 'Grimclaw roars at Terenthis to get his attention.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000005386, 'Grimclaw?! Easy there, my friend... where is your master Volcor?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005387, 'Grimclaw begins to moan and roar at Terenthis while stomping his paws on the ground.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000005388, 'Whoa, whoa there, my friend. One moment...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005389, 'Terenthis begins to cast a spell on Grimclaw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000005390, 'There... that should help. Now, tell me what\'s happened, Grimclaw.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005391, 'Grimclaw roars at Terenthis more, but this time the druid seems to understand the bear.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000005392, 'I understand, my friend. I shall find someone to help your master. Go back to him now, or at least stay close.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005393, 'Grimclaw roars in acknowledgement at Terenthis.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000005394, 'If you have the time, Grimclaw and his master Volcor could use your help. If you\'re interested, speak with me further...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Goblin Invaders (1062)
UPDATE quest_template SET CompleteScript = 1062 WHERE entry = 1062;

DELETE FROM dbscripts_on_quest_end WHERE id = 1062;
INSERT INTO dbscripts_on_quest_end VALUES
(1062, 1, 0, 0, 0, 0, 0, 0, 2000000105, 0, 0, 0, 0, 0, 0, 0, ''),
(1062, 4, 0, 0, 0, 0, 0, 0, 2000000106, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000105,2000000106);
INSERT INTO db_script_string VALUES
(2000000105, 'The spirits of Stonetalon still rage, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000106, 'I fear we may never soothe them...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: The Elder Crone (1063)
UPDATE quest_template SET CompleteScript = 1063 WHERE entry = 1063;

DELETE FROM dbscripts_on_quest_end WHERE id = 1063;
INSERT INTO dbscripts_on_quest_end VALUES
(1063, 0, 0, 2, 0, 0, 0, 0, 2000000108, 0, 0, 0, 0, 0, 0, 0, ''),
(1063, 2, 0, 0, 0, 0, 0, 0, 2000000109, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000108,2000000109);
INSERT INTO db_script_string VALUES
(2000000108, '%s listens to $N\'s plea.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000109, 'You were right to come. My wisdom will be yours.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Blood of Innocents (1066)
UPDATE quest_template SET CompleteScript = 1066 WHERE entry = 1066;

DELETE FROM dbscripts_on_quest_end WHERE id = 1066;
INSERT INTO dbscripts_on_quest_end VALUES
(1066, 0, 0, 2, 0, 0, 0, 0, 2000000110, 0, 0, 0, 0, 0, 0, 0, ''),
(1066, 4, 0, 0, 0, 0, 0, 0, 2000000111, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000110,2000000111);
INSERT INTO db_script_string VALUES
(2000000110, '%s creates his toxin...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000111, 'There we are, $N. The toxin is ready.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Return to Thunder Bluff (1067)
UPDATE quest_template SET CompleteScript = 1067 WHERE entry = 1067;

DELETE FROM dbscripts_on_quest_end WHERE id = 1067;
INSERT INTO dbscripts_on_quest_end VALUES
(1067, 0, 0, 2, 0, 0, 0, 0, 2000000112, 0, 0, 0, 0, 0, 0, 0, ''),
(1067, 4, 0, 0, 0, 0, 0, 0, 2000000113, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000112,2000000113);
INSERT INTO db_script_string VALUES
(2000000112, '%s fills a container with the toxin.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000113, 'The toxin is ready, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Dream Dust in the Swamp (1116)
UPDATE quest_template SET CompleteScript = 1116 WHERE entry = 1116;

DELETE FROM dbscripts_on_quest_end WHERE id = 1116;
INSERT INTO dbscripts_on_quest_end VALUES
(1116, 0, 0, 2, 0, 0, 0, 0, 2000000126, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 1, 0, 2, 0, 0, 0, 0, 2000000127, 0, 0, 0, 0, 0, 0, 0, ''), 
(1116, 1, 15, 6903, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 4, 0, 0, 0, 0, 0, 0, 2000000128, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 7, 0, 0, 0, 0, 0, 0, 2000000128, 0, 0, 0, 0, 0, 0, 0, ''),
(1116, 9, 0, 0, 0, 0, 0, 0, 2000000129, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000126,2000000127,2000000128,2000000129);
INSERT INTO db_script_string VALUES
(2000000126, '%s snorts a speck of dream dust up his nose...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000127, '%s is dazed...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000128, 'ACHOO!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000129, 'Wow! $N, that dream dust is powerful stuff!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Rumors for Kravel (1117)
UPDATE quest_template SET CompleteScript = 1117 WHERE entry = 1117;

DELETE FROM dbscripts_on_quest_end WHERE id = 1117;
INSERT INTO dbscripts_on_quest_end VALUES
(1117, 1, 0, 2, 0, 0, 0, 0, 2000005083, 0, 0, 0, 0, 0, 0, 0, ''), 
(1117, 2, 1, 94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(1117, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1117, 8, 0, 0, 0, 0, 0, 0, 2000005084, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000005083,2000005084);
INSERT INTO db_script_string VALUES
(2000005083, '%s begins to dance.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000005084, 'Hahah! $N, you make quite a partner!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Identifying the Brood (1169)
UPDATE quest_template SET CompleteScript = 1169 WHERE entry = 1169;

DELETE FROM dbscripts_on_quest_end WHERE id = 1169;
INSERT INTO dbscripts_on_quest_end VALUES
(1169, 0, 0, 2, 0, 0, 0, 0, 2000000124, 0, 0, 0, 0, 0, 0, 0, ''), 
(1169, 1, 15, 6741, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1169, 12, 0, 0, 0, 0, 0, 0, 2000000125, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000124,2000000125);
INSERT INTO db_script_string VALUES
(2000000124, '%s begins to cast a spell over the hearts and tongues.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000125, 'The brood of Onyxia!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Load Lightening (1176)
UPDATE quest_template SET CompleteScript = 1176 WHERE entry = 1176;

DELETE FROM dbscripts_on_quest_end WHERE id = 1176;
INSERT INTO dbscripts_on_quest_end VALUES
(1176, 2, 0, 0, 0, 0, 0, 0, 2000000114, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000000114;
INSERT INTO db_script_string VALUES
(2000000114, 'Okay, crew. Get to work on getting these bones installed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: A Broken Trap (1193)
UPDATE quest_template SET CompleteScript = 1193 WHERE entry = 1193;

DELETE FROM dbscripts_on_quest_end WHERE id = 1193;
INSERT INTO dbscripts_on_quest_end VALUES
(1193, 0, 9, 121926, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'spawn Fixed trap');

DELETE FROM gameobject WHERE guid = 121926;
INSERT INTO gameobject VALUES
(121926, 179512, 429, 1, 558.652, 550.057, -25.4008, 0, 0, 0, -0.771625, 0.636078, -7200, 255, 1);

-- ClassicDB: Nothing But The Truth (1383)
UPDATE quest_template SET CompleteScript = 1383 WHERE entry = 1383;

DELETE FROM dbscripts_on_quest_end WHERE id = 1383;
INSERT INTO dbscripts_on_quest_end VALUES
(1383, 15, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 3.14159, ''), 
(1383, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 10, 0, 0, 0, 0, 0, 0, 2000009034, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 6, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 4, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 6.23291, ''),
(1383, 1, 0, 0, 0, 0, 0, 0, 2000009033, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 0, 29, 2, 2, 5414, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5414 - npc_flag removed'),
(1383, 16, 0, 0, 0, 0, 0, 0, 2000009035, 0, 0, 0, 0, 0, 0, 0, ''),
(1383, 16, 29, 2, 1, 5414, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '5414 - npc_flag added');

DELETE FROM db_script_string WHERE entry IN (2000009033,2000009034,2000009035);
INSERT INTO db_script_string VALUES
(2000009033, 'The serum will only take a few minutes to prepare, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000009034, 'Almost done...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000009035, 'At last, the serum is complete, $N. Now, come closer. We must talk.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Nothing But The Truth (1391)
UPDATE quest_template SET CompleteScript = 1391 WHERE entry = 1391;

DELETE FROM dbscripts_on_quest_end WHERE id = 1391;
INSERT INTO dbscripts_on_quest_end VALUES
(1391, 0, 0, 2, 0, 0, 0, 0, 2000000119, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 2, 0, 0, 0, 0, 0, 0, 2000000120, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 7, 0, 0, 0, 0, 0, 0, 2000000121, 0, 0, 0, 0, 0, 0, 0, ''), 
(1391, 8, 1, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 13, 0, 2, 0, 0, 0, 0, 2000000122, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 14, 0, 0, 0, 0, 0, 0, 2000000123, 0, 0, 0, 0, 0, 0, 0, ''), 
(1391, 14, 15, 7293, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 15, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1391, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10423.5, -3240.63, 20.1786, 4.68979, ''),
(1391, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10420.6, -3240.03, 20.1786, 2.11212, ''),
(1391, 19, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10422.1, -3237.58, 20.1786, 3.80072, ''),
(1391, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10424.4, -3239.73, 20.1786, 3.8633, ''),
(1391, 22, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10422.4, -3238.96, 20.1786, 0.236333, ''), 
(1391, 26, 15, 5, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry BETWEEN 2000000119 AND 2000000123;
INSERT INTO db_script_string VALUES
(2000000119, '%s takes big swig of ale.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000120, 'That was refreshing. Now there\'s information that needs to be told...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000121, 'I believe the Forsaken are misleading the allies of the Horde... wait... I feel so... dizzy...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000122, '%s writhes in pain.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000000123, 'AAAAAAAAAAAAAAAARGH!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: The Temple of Atal'Hakkar (1445)
UPDATE quest_template SET CompleteScript = 1445 WHERE entry = 1445;

DELETE FROM dbscripts_on_quest_end WHERE id = 1445;
INSERT INTO dbscripts_on_quest_end VALUES
(1445, 0, 0, 0, 0, 0, 0, 0, 2000000138, 0, 0, 0, 0, 0, 0, 0, ''), 
(1445, 3, 15, 7437, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000000138;
INSERT INTO db_script_string VALUES
(2000000138, 'I hereby destroy these instruments of evil! For the Horde!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Birds of a Feather (9397)
UPDATE quest_template SET CompleteScript = 9397 WHERE entry = 9397;

DELETE FROM dbscripts_on_quest_end WHERE id = 9397;
INSERT INTO dbscripts_on_quest_end VALUES
(9397, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -597.806, 4110.68, 90.848, 2.02116, ''), 
(9397, 3, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9397, 5, 10, 17262, 20000, 0, 0, 0, 0, 0, 0, 0, -597.244, 4111.88, 90.7789, 0.805268, ''),
(9397, 6, 0, 0, 0, 0, 0, 0, 2000000181, 0, 0, 0, 0, 0, 0, 0, ''),
(9397, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -596.347, 4108.47, 91.0061, 5.15176, ''),
(9397, 12, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.10152, '');

DELETE FROM db_script_string WHERE entry = 2000000181;
INSERT INTO db_script_string VALUES
(2000000181, 'Thank you, $N. It looks like they\'re going to get along just fine.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: And Now, the Moment of Truth (10201)
UPDATE quest_template SET CompleteScript = 10201 WHERE entry = 10201;

DELETE FROM dbscripts_on_quest_end WHERE id = 10201;
INSERT INTO dbscripts_on_quest_end VALUES
(10201, 1, 0, 0, 0, 0, 0, 0, 2000000189, 0, 0, 0, 0, 0, 0, 0, ''), 
(10201, 2, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10201, 7, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10201, 8, 0, 0, 0, 0, 0, 0, 2000000190, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000000189,2000000190);
INSERT INTO db_script_string VALUES
(2000000189, 'I never thought it would turn out to be mana oil! There\'s going to be plenty of demand for that, minus Grek, of course!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000190, 'Ship it!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: A'dal (10210)
UPDATE quest_template SET CompleteScript = 10210 WHERE entry = 10210;

DELETE FROM dbscripts_on_quest_end WHERE id = 10210;
INSERT INTO dbscripts_on_quest_end VALUES
(10210, 2, 0, 0, 0, 18166, 10, 0, 2000000221, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000000221;
INSERT INTO db_script_string VALUES
(2000000221, 'Do not burden A\'dal with mundane questions, $r. This being\'s will is all that keeps our enemies from crushing this city.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Spinebreaker Post (10242)
UPDATE quest_template SET CompleteScript = 10242 WHERE entry = 10242;

DELETE FROM dbscripts_on_quest_end WHERE id = 10242;
INSERT INTO dbscripts_on_quest_end VALUES
(10242, 0, 0, 0, 0, 0, 0, 0, 2000005400, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.50731, ''),
(10242, 5, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 7, 0, 0, 0, 0, 0, 0, 2000005401, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1335.04, 2379.94, 88.9604, 2.62647, 'Summon cursed scrab #1'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1333.18, 2380.41, 88.954, 2.58642, 'Summon cursed scrab #2'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1333.7, 2383.65, 88.9613, 2.81418, 'Summon cursed scrab #4'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1331.99, 2383.07, 88.9563, 2.81418, 'Summon cursed scrab #5'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1331.91, 2380.46, 88.952, 2.82204, 'Summon cursed scrab #6'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1334.92, 2377.86, 88.9535, 2.40578, 'Summon cursed scrab #7'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1330.14, 2380.75, 88.9504, 2.22906, 'Summon cursed scrab #8'),
(10242, 9, 10, 21306, 20000, 0, 0, 0, 0, 0, 0, 0, -1332.31, 2382.28, 88.9557, 2.68459, 'Summon cursed scrab #3'),
(10242, 9, 0, 0, 0, 0, 0, 0, 2000005402, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 12, 0, 0, 0, 0, 0, 0, 2000005403, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 15, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, -1339.15, 2379.21, 88.9966, 3.68206, ''),
(10242, 16, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, -1333.22, 2380.73, 88.9533, 0.383386, ''),
(10242, 17, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, -1334.05, 2384.61, 88.9665, 1.7382, ''),
(10242, 18, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, -1331.66, 2379.8, 88.9522, 5.17432, ''),
(10242, 19, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, -1333.72, 2383.69, 88.9629, 2.14268, ''),
(10242, 20, 3, 0, 700, 0, 0, 0, 0, 0, 0, 0, -1333.8, 2380.11, 88.9559, 4.546, ''),
(10242, 23, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1334.64, 2381.99, 89.0748, 2.2454, ''),
(10242, 26, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.485637, ''),
(10242, 30, 0, 0, 0, 0, 0, 0, 2000005404, 0, 0, 0, 0, 0, 0, 0, ''),
(10242, 31, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry BETWEEN 2000005400 AND 2000005404;
INSERT INTO db_script_string VALUES
(2000005400, 'Please excuse me while I begin my tests...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005401, 'Interesting...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005402, 'But what is this?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005403, 'Oh, my!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005404, 'If my blood hadn\'t clotted long ago, it would be boiling with rage right now...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: The Earthbinder (10349)
UPDATE quest_template SET CompleteScript = 10349 WHERE entry = 10349;
UPDATE creature_template SET MovementType = 0 WHERE entry = 19294;

DELETE FROM gameobject WHERE id IN(184450);
INSERT INTO gameobject VALUES
('82673', '184450', '530', '1', '-287.019', '4731.63', '18.217', '2.58308', '0', '0', '0.961261', '0.275641', '-6', '255', '1');

DELETE FROM dbscripts_on_quest_end WHERE id = 10349;
INSERT INTO dbscripts_on_quest_end VALUES
(10349, 0, 29, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '19294 - npc_flag removed'),
(10349, 1, 0, 0, 0, 0, 0, 0, 2000000182, 0, 0, 0, 0, 0, 0, 0, ''),
(10349, 2, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '19294 - movement changed to 2:waypoint'),
(10349, 20, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '19294 - npc_flag added');

DELETE FROM creature_movement_template WHERE entry = 19294;
INSERT INTO creature_movement_template VALUES
(19294, 1, -287.691, 4730.5, 18.3553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.18652, 0, 0),
(19294, 2, -287.691, 4730.5, 18.3553, 20000, 1929401, 0, 0, 0, 0, 0, 0, 0, 1.18652, 0, 0),
(19294, 3, -294.766, 4715.08, 28.1862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.0815, 0, 0),
(19294, 4, -294.766, 4715.08, 28.1862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.20944, 0, 0),
(19294, 5, -294.766, 4715.08, 28.1862, 5000, 1929402, 0, 0, 0, 0, 0, 0, 0, 0.20944, 0, 0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1929401,1929402);
INSERT INTO dbscripts_on_creature_movement VALUES
(1929401, 2, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1929401, 5, 9, 82673, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1929401, 9, 0, 0, 0, 0, 0, 0, 2000000183, 0, 0, 0, 0, 0, 0, 0, ''),
(1929401, 9, 10, 20599, 120000, 0, 0, 0, 0, 0, 0, 0, -287.019, 4731.63, 18.217, 2.58308, ''),
(1929402, 2, 20, 1, 0, 19294, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '19294 - movement changed to 0:idle');

DELETE FROM db_script_string WHERE entry IN (2000000182,2000000183);
INSERT INTO db_script_string VALUES
(2000000182, 'I have an idea. Let\'s plant this shard in the ground and see what happens.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000183, 'The evil emanating from the crystal shard has lured one of the colossi. Put it down quick!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Apothecary Zelana (10449)
UPDATE quest_template SET CompleteScript = 10449 WHERE entry = 10449;

DELETE FROM dbscripts_on_quest_end WHERE id = 10449;
INSERT INTO dbscripts_on_quest_end VALUES
(10449, 0, 0, 0, 0, 0, 0, 0, 2000000176, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36.7743, 2121.96, 126.82, 6.23891, ''),
(10449, 2, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 5, 0, 0, 0, 0, 0, 0, 2000000177, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 7, 0, 0, 0, 0, 0, 0, 2000000178, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36.5121, 2121.97, 127.012, 3.1765, ''),
(10449, 10, 0, 0, 0, 0, 0, 0, 2000000179, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 10, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10449, 13, 1, 274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry BETWEEN 2000000176 AND 2000000179;
INSERT INTO db_script_string VALUES
(2000000176, 'Thank you, $N. Now, to perform the test...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000177, 'Ah, I see...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000178, 'Yes, this is unfortunate.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000179, '$N, I have confirmed that this blood is from the Bonechewer clan of orcs, tainted with demonic power. I\'m afraid, however, that my current equipment can delve no deeper into this mystery...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Strange Brew (10511)
UPDATE quest_template SET CompleteScript = 10511 WHERE entry = 10511;

DELETE FROM dbscripts_on_quest_end WHERE id = 10511;
INSERT INTO dbscripts_on_quest_end VALUES
(10511, 9, 0, 0, 0, 0, 0, 0, 2000000284, 0, 0, 0, 0, 0, 0, 0, 'Endtext for Quest 10511');

DELETE FROM db_script_string WHERE entry = 2000000284;
INSERT INTO db_script_string VALUES
(2000000284, 'ACK! That\'s the worst thing I\'ve ever tasted! I wouldn\'t let my ram drink that!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Demonic Crystal Prisons (10528)
UPDATE quest_template SET CompleteScript = 10528 WHERE entry = 10528;

DELETE FROM dbscripts_on_quest_end WHERE id = 10528;
INSERT INTO dbscripts_on_quest_end VALUES
(10528, 0, 15, 5, 0, 21292, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10528, 4, 0, 0, 0, 21318, 25, 0, 2000009036, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000009036;
INSERT INTO db_script_string VALUES
(2000009036, 'I... I have died... I was in so much pain... engulfed in darkness... Can you see me, $r?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Ruuan Weald (10615)
UPDATE quest_template SET CompleteScript = 10615 WHERE entry = 10615;

DELETE FROM dbscripts_on_quest_end WHERE id = 10615;
INSERT INTO dbscripts_on_quest_end VALUES
(10615, 1, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'laugh emote');

-- UDB: Into the Churning Gulch (10715)
UPDATE quest_template SET CompleteScript = 10715 WHERE entry = 10715;

DELETE FROM dbscripts_on_quest_end WHERE id = 10715;
INSERT INTO dbscripts_on_quest_end VALUES
(10715, 0, 29, 3, 2, 22103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '22103 - npc_flag removed'),
(10715, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2915.57, 5957.42, 3.27419, 2.97874, ''),
(10715, 5, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10715, 12, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10715, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2919.11, 5956.93, 3.16149, 1.03933, ''),
(10715, 16, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2919.11, 5956.93, 3.16149, 1.58825, ''),
(10715, 17, 0, 0, 0, 0, 0, 0, 2000000184, 0, 0, 0, 0, 0, 0, 0, ''),
(10715, 17, 29, 3, 1, 22103, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '22103 - npc_flag added');

DELETE FROM db_script_string WHERE entry = 2000000184;
INSERT INTO db_script_string VALUES
(2000000184, 'There, it is completed.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: Did You Get The Note? (10719)
UPDATE quest_template SET CompleteScript = 10719 WHERE entry = 10719;

DELETE FROM dbscripts_on_quest_end WHERE id = 10719;
INSERT INTO dbscripts_on_quest_end VALUES
(10719, 1, 0, 0, 0, 21983, 10, 1, 2000009037, 0, 0, 0, 0, 0, 0, 0, ''),
(10719, 3, 0, 0, 0, 21983, 10, 0, 2000009038, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009037,2000009038);
INSERT INTO db_script_string VALUES
(2000009037, '$r, do you know who Kolphis Darkscale is?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000009038, 'Yes, he\'s second-in-command of the wyrmcult at the Blackwing Coven to the west.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: To the Top (3567)
UPDATE quest_template SET CompleteScript = 3567 WHERE entry = 3567;

DELETE FROM dbscripts_on_quest_end WHERE id = 3567;
INSERT INTO dbscripts_on_quest_end VALUES
(3567, 0, 15, 12242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast spell 12242 on Player');

-- ClassicDB: The Key to Freedom (4451)
UPDATE quest_template SET CompleteScript = 4451 WHERE entry = 4451;

DELETE FROM dbscripts_on_quest_end WHERE id = 4451;
INSERT INTO dbscripts_on_quest_end VALUES
(4451, 5, 10, 9876, 600000, 0, 0, 0, 0, 0, 0, 0, -7026.23, -1784.27, 265.77, 3.71687, '');

-- ClassicDB: For All To See (7491)
UPDATE quest_template SET CompleteScript = 7491 WHERE entry = 7491;

DELETE FROM dbscripts_on_quest_end WHERE id = 7491;
INSERT INTO dbscripts_on_quest_end VALUES
(7491, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1540.2, -4405.02, 11.18, 0, ''),
(7491, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1541.95, -4405.1, 10.244, 0, ''), 
(7491, 15, 0, 1, 0, 0, 0, 0, 2000009039, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 15, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 23, 0, 1, 0, 0, 0, 0, 2000009040, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 23, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 30, 15, 22888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 30, 9, 40134, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7491, 40, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1570, -4405.89, 7.63613, 0, ''),
(7491, 55, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1568, -4405.87, 8.13371, 0, '');

DELETE FROM gameobject WHERE guid = 40134;
INSERT INTO gameobject VALUES
(40134, 179556, 1, 1, 1537.06, -4409.45, 9.382, 1.57399, 0, 0, 0.708235, 0.705977, -25, 0, 2);

DELETE FROM db_script_string WHERE entry IN (2000009039,2000009040);
INSERT INTO db_script_string VALUES
(2000009039, 'People of the Horde, citizens of Orgrimmar, come, gather round and celebrate heroes of the Horde. On this day, $N, under the auspices of our glorious Warchief, laid a mortal blow against the Black Dragonflight. The brood mother, Onyxia, has been slain!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', NULL),
(2000009040, 'Bear witness to the undeniable power of your Warchief! Be lifted by the rallying cry of your dragon slayers!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', NULL);

-- ClassicDB: Celebrating Good Times (7496)
UPDATE quest_template SET CompleteScript = 7496 WHERE entry = 7496;

DELETE FROM gameobject WHERE id IN(179558); -- severed head of onyxia missing GO spawn
INSERT INTO gameobject VALUES
('40135', '179558', '0', '1' , '-8971.95', '552.556', '105.971', '3.8666', '0', '0', '0.935013', '-0.354614', '-25', '0', '2');

DELETE FROM dbscripts_on_quest_end WHERE id = 7496;
INSERT INTO dbscripts_on_quest_end VALUES
(7496, 2, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 2, 0, 1, 0, 0, 0, 0, 2000009041, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 12, 9, 40135, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 12, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 12, 0, 1, 0, 0, 0, 0, 2000009042, 0, 0, 0, 0, 0, 0, 0, ''),
(7496, 20, 15, 22888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009041,2000009042);
INSERT INTO db_script_string VALUES
(2000009041, 'Citizens and allies of Stormwind, on this day, history has been made. $N has laid waste to that which had attempted to usurp the rule of the kingdom. Gather round and join me in honoring our heroes.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', NULL),
(2000009042, 'Behold the might of the Alliance! The dread lady, Onyxia, hangs from the arches! Let the rallying cry of the dragon slayer lift your spirits!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', NULL);

-- ClassicDB: Stealing XXXX's Flame (9324, 9325, 9326, 9330, 9331, 9332)
UPDATE quest_template SET CompleteScript = 9324 WHERE entry = 9324;
UPDATE quest_template SET CompleteScript = 9325 WHERE entry = 9325;
UPDATE quest_template SET CompleteScript = 9326 WHERE entry = 9326;
UPDATE quest_template SET CompleteScript = 9330 WHERE entry = 9330;
UPDATE quest_template SET CompleteScript = 9331 WHERE entry = 9331;
UPDATE quest_template SET CompleteScript = 9332 WHERE entry = 9332;

DELETE FROM dbscripts_on_quest_end WHERE id IN (9324,9325,9326,9330,9331,9332);
INSERT INTO dbscripts_on_quest_end VALUES
(9324, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loremaster cast Fire Festival Fortitude'),
(9325, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loremaster cast Fire Festival Fortitude'),
(9326, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Loremaster cast Fire Festival Fortitude'),
(9330, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talespinner cast Fire Festival Fortitude'),
(9331, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talespinner cast Fire Festival Fortitude'),
(9332, 0, 15, 29235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Talespinner cast Fire Festival Fortitude');

########################
# Missing StartScripts #
########################

-- ClassicDB: Report to Goldshire (54)
UPDATE quest_template SET StartScript = 54 WHERE entry = 54;

DELETE FROM dbscripts_on_quest_start WHERE id = 54;
INSERT INTO dbscripts_on_quest_start VALUES
(54, 1, 15, 6245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(54, 2, 1, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(54, 2, 0, 0, 0, 0, 0, 0, 2000000059, 0, 0, 0, 0, 0, 0, 0, '');

-- ClassicDB: Proving Allegiance (409)
UPDATE quest_template SET StartScript = 409 WHERE entry = 409;

DELETE FROM dbscripts_on_quest_start WHERE id = 409;
INSERT INTO dbscripts_on_quest_start VALUES
(409, 1, 0, 0, 0, 0, 0, 0, 2000009043, 0, 0, 0, 0, 0, 0, 0, ''), 
(409, 3, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000009043;
INSERT INTO db_script_string VALUES
(2000009043, 'Take a Candle of Beckoning from this crate, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: A Humble Task (753)
UPDATE quest_template SET StartScript = 753 WHERE entry = 753;

DELETE FROM dbscripts_on_quest_start WHERE id = 753;
INSERT INTO dbscripts_on_quest_start VALUES
(753, 0, 0, 2, 0, 0, 0, 0, 2000009044, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000009044;
INSERT INTO db_script_string VALUES
(2000009044, 'Greatmother Hawkwind gestures to the pitcher of water sitting on the edge of the well.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL);

-- ClassicDB: Cave Mushrooms (947)
UPDATE quest_template SET StartScript = 947 WHERE entry = 947;

DELETE FROM dbscripts_on_quest_start WHERE id = 947;
INSERT INTO dbscripts_on_quest_start VALUES
(947, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(947, 1, 0, 0, 2, 0, 0, 0, 2000009045, 0, 0, 0, 0, 0, 0, 0, ''),
(947, 5, 0, 0, 2, 0, 0, 0, 2000009046, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009045,2000009046);
INSERT INTO db_script_string VALUES
(2000009045, 'Thank you, $N. And luck to you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '2', '0', NULL),
(2000009046, 'Cliffspring Falls lies along the mountains to the east and north.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '2', '0', NULL);

-- ClassicDB: A Lost Master (993)
UPDATE quest_template SET StartScript = 993 WHERE entry = 993;

DELETE FROM dbscripts_on_quest_start WHERE id = 993;
INSERT INTO dbscripts_on_quest_start VALUES
(993, 1, 0, 2, 0, 0, 0, 0, 2000009047, 0, 0, 0, 0, 0, 0, 0, ''),
(993, 1, 15, 10403, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, ''), 
(993, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(993, 4, 0, 0, 0, 0, 0, 0, 2000009048, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009047,2000009048);
INSERT INTO db_script_string VALUES
(2000009047, 'Terenthis begins to cast a spell as you take the cloak from him.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2', '0', '0', NULL),
(2000009048, 'Go now, $N. Find Volcor... and remember, the magics protecting you will fail if you interact with anyone, save for talking.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Blueleaf Tubers (1221)
UPDATE quest_template SET StartScript = 1221 WHERE entry = 1221;

DELETE FROM dbscripts_on_quest_start WHERE id = 1221;
INSERT INTO dbscripts_on_quest_start VALUES
(1221, 0, 0, 0, 0, 0, 0, 0, 2000000107, 0, 0, 0, 0, 0, 0, 0, ''),
(1221, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1221, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -929.023, -3696.98, 7.97395, 1.7352, ''),
(1221, 5, 1, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1221, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -928.778, -3697.25, 7.99705, 6.17741, ''),
(1221, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -928.982, -3697.23, 8.06642, 3.08923, '');

DELETE FROM db_script_string WHERE entry = 2000000107;
INSERT INTO db_script_string VALUES
(2000000107, 'Hey $N! Don\'t forget to grab a crate, a manual and a command stick!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: The Summoning (1713) (Remove the summoning DBScript, this has moved to SD2 C++)
UPDATE quest_template SET StartScript = 0 WHERE entry = 1713;
DELETE FROM dbscripts_on_quest_start WHERE id = 1713;

-- ClassicDB: Long Forgotten Memories (8305)
UPDATE quest_template SET StartScript = 8305 WHERE entry = 8305;

DELETE FROM dbscripts_on_quest_start WHERE id = 8305;
INSERT INTO dbscripts_on_quest_start VALUES
(8305, 5, 15, 25201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- UDB: Mission: Gateways Murketh and Shaadraz (10129)
UPDATE quest_template SET StartScript = 10129 WHERE entry = 10129;

DELETE FROM dbscripts_on_quest_start WHERE id = 10129;
INSERT INTO dbscripts_on_quest_start VALUES
(10129, 1, 0, 0, 0, 0, 0, 0, 2000000180, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000000180;
INSERT INTO db_script_string VALUES
(2000000180, 'Speak with Wing Commander Brack, $N. He\'ll outfit you with one of our armored wyvern destroyers. And, good luck!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: The Earthbinder (10349)
UPDATE quest_template SET StartScript = 10349 WHERE entry = 10349;

DELETE FROM dbscripts_on_quest_start WHERE id = 10349;
INSERT INTO dbscripts_on_quest_start VALUES
(10349, 1, 0, 4, 0, 19294, 50, 0, 2000000222, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry = 2000000222;
INSERT INTO db_script_string VALUES
(2000000222, 'Up here on the hill, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '4', '0', '0', NULL);

-- UDB: Welcoming the Wolf Spirit (10791)
UPDATE quest_template SET StartScript = 10791 WHERE entry = 10791;

DELETE FROM dbscripts_on_quest_start WHERE id = 10791;
INSERT INTO dbscripts_on_quest_start VALUES
(10791, 0, 29, 3, 2, 18384, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18384 - npc_flag removed'),
(10791, 60, 29, 3, 1, 18384, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '18384 - npc_flag added');

-- UDB: Grillok "Darkeye" (10834)
UPDATE quest_template SET StartScript = 10834 WHERE entry = 10834;

DELETE FROM dbscripts_on_quest_start WHERE id = 10834;
INSERT INTO dbscripts_on_quest_start VALUES
(10834, 2, 10, 22224, 19000, 0, 0, 0, 0, 0, 0, 0, -1335.97, 2353.8, 90.3872, 1.02575, ''),
(10834, 3, 0, 0, 0, 22224, 10, 4, 2000005405, 0, 0, 0, 0, 0, 0, 0, 'force buddy to: say text'),
(10834, 4, 3, 0, 1000, 22224, 10, 4, 0, 0, 0, 0, -1333.03, 2352.75, 92.6582, 1.03517, 'force buddy to move'),
(10834, 6, 3, 0, 1000, 22224, 10, 4, 0, 0, 0, 0, 0, 0, 0, 0.81601, 'force buddy to move'),
(10834, 9, 0, 0, 0, 22224, 10, 4, 2000005406, 0, 0, 0, 0, 0, 0, 0, 'force buddy to: say text'),
(10834, 15, 3, 0, 1000, 22224, 50, 4, 0, 0, 0, 0, -1324.25, 2350.68, 109.164, 6.05855, 'force buddy to move'),
(10834, 17, 3, 0, 1000, 22224, 50, 4, 0, 0, 0, 0, -1301.09, 2344.23, 121.063, 5.95253, 'force buddy to move');

DELETE FROM db_script_string WHERE entry IN (2000005405,2000005406);
INSERT INTO db_script_string VALUES
(2000005405, 'How dare you take my eye! I will crush your soul and feed it to my blind and wimpering imps!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000005406, 'Come to my lair, whelp! Come to me and pay for your insolecne!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- UDB: World of Shadows (11004)
UPDATE quest_template SET StartScript = 11004 WHERE entry = 11004;

DELETE FROM dbscripts_on_quest_start WHERE id = 11004;
INSERT INTO dbscripts_on_quest_start VALUES
(11004, 1, 0, 0, 0, 23038, 10, 4, 2000009049, 0, 0, 0, 0, 0, 0, 0, ''),
(11004, 7, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11004, 10, 0, 0, 0, 23036, 10, 4, 2000009050, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000009049,2000009050);
INSERT INTO db_script_string VALUES
(2000009049, 'The arakkoa are hidden... everywhere!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000009050, 'Rest now, Adaris. You need to recover your strength.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

-- ClassicDB: Wrath of the Blue Flight (5162)
UPDATE quest_template SET StartScript = 5162 WHERE entry = 5162;

DELETE FROM dbscripts_on_quest_start WHERE id = 5162;
INSERT INTO dbscripts_on_quest_start VALUES
(5162, 0, 15, 17168, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Haleh''s Will on Player'),
(5162, 11, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1535, -2629, 380, 0, 'Teleport Player to Western Plaguelands');

#########################
# Missing Event Scripts #
#########################

DELETE FROM dbscripts_on_event WHERE id IN (293,663,1370,2244,4059,4079,4102,4118,4178,4185,4192,4193,4194,4195,4196,4197,4215,4216,4217,4218,4219,4234,4235,4236,4237,4247,4260,4265,4276,4280,4284,4288,5258,9417,9425,9426,9427,466,467,468);
INSERT INTO dbscripts_on_event VALUES
-- ClassicDB
(293, 0, 15, 15344, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, 3161.68, -1211.12, 214.949, 4.669, 'spawn Velinde Starsong'),
(663, 2, 28, 8, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'kneel'),
(663, 5, 0, 0, 0, 3946, 10, 0, 2000000238, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 5, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 10, 0, 0, 0, 3946, 10, 0, 2000000239, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 10, 1, 20, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 15, 0, 0, 0, 3946, 10, 0, 2000000240, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 15, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2244, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4059, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4079, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4102, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4118, 0, 15, 15343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4178, 0, 15, 15344, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4185, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4192, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4193, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4194, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4195, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4196, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4197, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4215, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4216, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4217, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4218, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4219, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4234, 0, 15, 15343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4235, 0, 15, 15343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4236, 0, 15, 15343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4237, 0, 15, 15343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4247, 0, 15, 15344, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4260, 0, 15, 15343, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4265, 0, 15, 15344, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4276, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4280, 0, 15, 15366, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4284, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4288, 0, 15, 15342, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9417, 0, 8, 15415, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Credit for quest 1657'),
(9425, 2, 12, 66334, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Close the AQ gate'),
(9426, 2, 12, 66335, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Close the AQ roots'),
(9427, 2, 12, 66336, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Close the AQ runes'),
-- UDB
(466, 0, 9, 46424, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 754'),
(467, 0, 9, 46425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 758'),
(468, 0, 9, 46429, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'quest 760'),
(5258, 1, 9, 85477, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gobject');

DELETE FROM gameobject WHERE guid IN (85477,46424,46425,46429,66334,66335,66336,120441);
INSERT INTO gameobject VALUES
(85477, 176295, 329, 1, 3458.88, -3106.35, 137.889, 3.14159, 0, 0, 1, 0, -30, 100, 1),
(46424, 2904, 1, 1, -2544.54, -712.088, -9.232, 0.767944, 0, 0, 0.374606, 0.927184, 180, 0, 0),
(46425, 2904, 1, 1, -1823.85, -237.555, -9.42485, 0.069812, 0, 0, 0.0348989, 0.999391, 180, 0, 0),
(46429, 2904, 1, 1, -753.256, -149.158, -29.0568, 3.08918, 0, 0, 0.999657, 0.0262033, 180, 0, 0),
(66334, 176146, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 0),
(66335, 176147, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 0),
(66336, 176148, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 0);

DELETE FROM db_script_string WHERE entry IN (2000000238,2000000239,2000000240);
INSERT INTO db_script_string VALUES
(2000000238, 'The numbers of my companions dwindles, goddess, and my own power shall soon be insufficient to hold back the demons of Felwood.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000239, 'Goddess, grant me the power to overcome my enemies! Hear me, please, my need is desperate and my cause is just!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL),
(2000000240, 'What... what is this? Could this by the answer to my prayers? Elune has granted me a weapon -- this scythe -- to defeat the demons.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL);

###################################
# Missing GO Template Use Scripts #
###################################

DELETE FROM dbscripts_on_go_template_use WHERE id IN (176216,176217,176346,176349,176350,176351,176352,176353,181332,181333,181334,181335,181336,181337,300058);
INSERT INTO dbscripts_on_go_template_use VALUES
(176216, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap'),
(176217, 1, 13, 0, 0, 176211, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Cannonball trap'),
(176346, 0, 9, 93874, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn Postbox Parcel'),
(176349, 0, 9, 93875, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn Postbox Parcel'),
(176350, 0, 9, 93876, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn Postbox Parcel'),
(176351, 0, 9, 93877, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn Postbox Parcel'),
(176352, 0, 9, 93878, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn Postbox Parcel'),
(176353, 0, 9, 93879, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn Postbox Parcel'),
(181332, 0, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Alliance'),
(181332, 1, 15, 29101, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Stormwind'),
(181333, 0, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Alliance'),
(181333, 1, 15, 29102, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Ironforge'),
(181334, 0, 34, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Alliance'),
(181334, 1, 15, 29099, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Darnassus'),
(181335, 0, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Horde'),
(181335, 1, 15, 29133, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Undercity'),
(181336, 0, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Horde'),
(181336, 1, 15, 29130, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Orgrimmar'),
(181337, 0, 34, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop if player is Horde'),
(181337, 1, 15, 29132, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Create Flame Thunder Bluff'),
(300058, 0, 15, 26452, 0, 15906, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Ironforge'),
(300058, 0, 15, 26455, 0, 15719, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Thunderbluff'),
(300058, 0, 15, 26448, 0, 15892, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Moonglade - Alliance'),
(300058, 0, 15, 26450, 0, 15905, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Darnassus'),
(300058, 0, 15, 26448, 0, 15891, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Moonglade - Horde'),
(300058, 0, 15, 26453, 0, 15908, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Orgrimmar'),
(300058, 0, 15, 26454, 0, 15694, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Storwind'),
(300058, 0, 15, 26456, 0, 15907, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Teleports Undercity');

##################################
# Missing Creature Death Scripts #
##################################

DELETE FROM dbscripts_on_creature_death WHERE id IN (4829,17947,18472,21292);
INSERT INTO dbscripts_on_creature_death VALUES
-- ClassicDB
(4829, 2, 31, 6729, 50, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 'search for 6729'),
(4829, 3, 10, 6729, 300000, 0, 0, 0, 0, 0, 0, 0, -857.158, -467.636, -33.9256, 5.90677, ''),
-- UDB
(17947, 0, 40, 0, 0, 182070, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(18472, 1, 0, 0, 0, 18956, 132569, 16, 2000009051, 0, 0, 0, 0, 0, 0, 0, ''),
(21292, 0, 10, 21318, 1200000, 0, 0, 0, 0, 0, 0, 0, -3801.75, 2600.4, 90.2716, 5.75959, 'summon'),
(21292, 2, 1, 1, 0, 21318, 25, 4, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM db_script_string WHERE entry IN (2000001011,2000009051);
INSERT INTO db_script_string VALUES
(2000009051, 'Well done! Hurry, though, we don\'t want to be caught!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', NULL),
(2000001011, 'Let this be a lesson to those that would do evil to our lands!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '0', '0', NULL);



