-- Horde quests that should give Horde reputation instead of every capital separately
UPDATE `quest_template` SET `RewRepFaction1`=67, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` IN (
1394,  -- Final Passage
4004,  -- The Princess Saved?
4511,  -- Calm Before the Storm
6804,  -- Poisoned Water
7489,  -- Lethtendris's Web
7667,  -- Material Assistance
7730,  -- Zukk'ash Infestation
7731,  -- Stinglasher
7732,  -- Zukk'ash Report
8150,  -- Honoring a Hero
8258,  -- The Darkreaver Menace
8312,  -- Hallow's End Treats for Spoops!
8322,  -- Rotten Eggs
8409); -- Ruined Kegs

-- Alliance quests that should give Alliance reputation instead of every capital separately
UPDATE `quest_template` SET `RewRepFaction1`=469, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` IN (
253,   -- Bride of the Embalmer
1081,  -- Reception from Tyrande
1468,  -- Children's Week
1658,  -- Crashing the Wickerman Festival
4266,  -- A Hero's Welcome
4510,  -- Calm before the Storm
4902,  -- Wildkin of Elune
5245,  -- Troubled Spirits of Kel'Theril
5246,  -- Fragments of the Past
5247,  -- Fragments of the Past
5248,  -- Tormented By the Past
5252,  -- Remorseful Highborne
5253,  -- The Crystal of Zin-Malor
7488,  -- Lethtendris's Web
8149,  -- Honoring a Hero
8311); -- Hallow's End Treats for Jesper!

-- Goblin quests that should give Steamwheedle Cartel reputation instead of every goblin city separately
UPDATE `quest_template` SET `RewRepFaction1`=169, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` IN (
4726,  -- Broodling Essence
4735,  -- Egg Collection
5518,  -- The Gordok Ogre Suit
5519,  -- The Gordok Ogre Suit
6962,  -- Treats for Great-father Winter
7003,  -- Zapped Giants
7025,  -- Treats for Greatfather Winter
7721,  -- Fuel for the Zapping
7725,  -- Again With the Zapped Giants
7726); -- Refuel for the Zapping

-- The Gordok Ogre Suit (5519) (was giving 50)
UPDATE `quest_template` SET `RewRepValue1`=75 WHERE `entry`=5519;

-- Crashing the Wickerman Festival, Hallow's End Treats for Jesper!, Hallow's End Treats for Spoops! and Ruined Kegs (were giving 150)
UPDATE `quest_template` SET `RewRepValue1`=250 WHERE `entry` IN (1658, 8311, 8312, 8409);

-- Egg Collection, Lethtendris's Web (was giving 350) and Honoring a Hero (was giving 250)
UPDATE `quest_template` SET `RewRepValue1`=500 WHERE `entry` IN (4735, 7488, 7489, 8149, 8150);

-- Rise of the Silithid (4267) and Timber Worg Tails should not give any reputation
UPDATE `quest_template` SET `RewRepFaction1`=0, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue1`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` IN (4267, 10016);

-- Rise of the Silithid (162) gives reputation to Gadgetzan and Alliance
UPDATE `quest_template` SET `RewRepFaction2`=469, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=162;

-- Rise of the Silithid (32) gives reputation to Gadgetzan and Horde
UPDATE `quest_template` SET `RewRepFaction2`=67, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=32;

-- The Guns of Northwatch, Wenikee Boltbucket, Rilli Greasygob, Nugget Slugs and Samophlange Manual give reputation to Ratchet and Horde
UPDATE `quest_template` SET `RewRepFaction2`=67, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` IN (891, 3921, 3922, 3923, 3924);

-- The Lord of Blackrock (reputations in wrong order, was lacking Exodar reputation, gave only 250 Gnomeregan reputation)
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=47, `RewRepFaction3`=69, `RewRepFaction4`=54, `RewRepFaction5`=930, `RewRepValue3`=500, `RewRepValue5`=500 WHERE `entry` IN (7781, 7782);

-- For The Horde! (reputations in wrong order)
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=530, `RewRepFaction3`=68, `RewRepFaction5`=911 WHERE `entry`=4974;

-- To Show Due Judgment had reputation for other cities as well, should only have Stormwind
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepValue1`=75, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0 WHERE `entry`=7639;

-- Exorcising Terrordale had reputation for other cities as well, should only have Stormwind
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepValue1`=250, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0 WHERE `entry`=7640;

-- Scarlet Diversions should give Undercity reputation only
UPDATE `quest_template` SET `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=5096;

-- Help for Mudsprocket gave 350 reputation to every Horde capital, should only give 10 reputation for Gadgetzan
UPDATE `quest_template` SET `RewRepFaction1`=369, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue1`=10, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=11211;

-- Making Amends and War at Sea had hardcoded spillover reputation, but it is already handled in core
UPDATE `quest_template` SET `RewRepFaction2`=577, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=500, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=9266;
UPDATE `quest_template` SET `RewRepFaction2`=369, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=500, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=9268;

