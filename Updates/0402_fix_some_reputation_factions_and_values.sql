-- Issue: wotlk has RewRepFaction1 already fixed, but all RewRepValue1 were purged, needs to be restored.

-- Horde quests that should give Horde reputation instead of every capital separately
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 1394; -- Final Passage
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4004; -- The Princess Saved?
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4511; -- Calm Before the Storm
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 6804; -- Poisoned Water
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7489; -- Lethtendris's Web
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7667; -- Material Assistance
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7730; -- Zukk'ash Infestation
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7731; -- Stinglasher
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 75, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7732; -- Zukk'ash Report
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8150; -- Honoring a Hero
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8258; -- The Darkreaver Menace
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 150, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8312; -- Hallow's End Treats for Spoops!
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8322; -- Rotten Eggs
UPDATE `quest_template` SET `RewRepFaction1` = 67, `RewRepValue1`= 150, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8409; -- Ruined Kegs

-- Alliance quests that should give Alliance reputation instead of every capital separately
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 253; -- Bride of the Embalmer
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 1081; -- Reception from Tyrande
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 10, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 1468; -- Children's Week
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 150, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 1658; -- Crashing the Wickerman Festival
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4266; -- A Hero's Welcome
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 500, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4510; -- Calm Before the Storm
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4902; -- Wildkin of Elune
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5245; -- Troubled Spirits of Kel'Theril
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5246; -- Fragments of the Past
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5247; -- Fragments of the Past
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5248; -- Tormented By the Past
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5252; -- Remorseful Highborne
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5253; -- The Crystal of Zin-Malor
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7488; -- Lethtendris's Web
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8149; -- Honoring a Hero
UPDATE `quest_template` SET `RewRepFaction1` = 469, `RewRepValue1`= 150, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 8311; -- Hallow's End Treats for Jesper!

-- Goblin quests that should give Steamwheedle Cartel reputation instead of every goblin city separately
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4726; -- Broodling Essence
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 4735; -- Egg Collection
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5518; -- The Gordok Ogre Suit
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 50, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 5519; -- The Gordok Ogre Suit
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 6962; -- Treats for Great-father Winter
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7003; -- Zapped Giants
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7025; -- Treats for Greatfather Winter
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 350, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7721; -- Fuel for the Zapping
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7725; -- Again With the Zapped Giants
UPDATE `quest_template` SET `RewRepFaction1` = 169, `RewRepValue1`= 25, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 7726; -- Refuel for the Zapping

-- The Gordok Ogre Suit (5519) (was giving 50)
UPDATE `quest_template` SET `RewRepValue1`=75 WHERE `entry`=5519;

-- Crashing the Wickerman Festival, Hallow's End Treats for Jesper!, Hallow's End Treats for Spoops! and Ruined Kegs (were giving 150)
UPDATE `quest_template` SET `RewRepValue1`=250 WHERE `entry` IN (1658, 8311, 8312, 8409);

-- Egg Collection, Lethtendris's Web (was giving 350) and Honoring a Hero (was giving 250)
UPDATE `quest_template` SET `RewRepValue1`=500 WHERE `entry` IN (4735, 7488, 7489, 8149, 8150);

-- Rise of the Silithid (4267) and Timber Worg Tails (10016) should not give any reputation
UPDATE `quest_template` SET `RewRepFaction1`=0, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue1`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` IN (4267, 10016);

-- Rise of the Silithid (162) gives reputation to Gadgetzan and Alliance
UPDATE `quest_template` SET `RewRepFaction2`=469, `RewRepValue1`= 350, `RewRepValue2`= 350, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=162;

-- Rise of the Silithid (32) gives reputation to Gadgetzan and Horde
UPDATE `quest_template` SET `RewRepFaction2`=67, `RewRepValue1`= 350, `RewRepValue2`= 350, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=32;

-- The Guns of Northwatch, Wenikee Boltbucket, Rilli Greasygob, Nugget Slugs and Samophlange Manual give reputation to Ratchet and Horde
UPDATE `quest_template` SET `RewRepFaction1` = 470, `RewRepValue1` = 250, `RewRepFaction2` = 67, `RewRepValue2` = 75, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 891; -- The Guns of Northwatch
UPDATE `quest_template` SET `RewRepFaction1` = 470, `RewRepValue1` = 75, `RewRepFaction2` = 67, `RewRepValue2` = 25, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 3921; -- Wenikee Boltbucket
UPDATE `quest_template` SET `RewRepFaction1` = 470, `RewRepValue1` = 250, `RewRepFaction2` = 67, `RewRepValue2` = 75, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 3922; -- Nugget Slugs
UPDATE `quest_template` SET `RewRepFaction1` = 470, `RewRepValue1` = 25, `RewRepFaction2` = 67, `RewRepValue2` = 10, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 3923; -- Rilli Greasygob
UPDATE `quest_template` SET `RewRepFaction1` = 470, `RewRepValue1` = 350, `RewRepFaction2` = 67, `RewRepValue2` = 150, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry` = 3924; -- Samophlange Manual

-- The Lord of Blackrock (reputations in wrong order, was lacking Exodar reputation, gave only 250 Gnomeregan reputation)
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=47, `RewRepFaction3`=69, `RewRepFaction4`=54, `RewRepFaction5`=930, `RewRepValue1`=500, `RewRepValue2`=500, `RewRepValue3`=500, `RewRepValue4`=500, `RewRepValue5`=500 WHERE `entry` IN (7781, 7782);

-- For The Horde! (reputations in wrong order)
UPDATE `quest_template` SET `RewRepFaction1`=76, `RewRepFaction2`=530, `RewRepFaction3`=68, `RewRepFaction5`=911, `RewRepValue1`=500, `RewRepValue2`=500, `RewRepValue3`=500, `RewRepValue4`=500, `RewRepValue5`=500  WHERE `entry`=4974;

-- To Show Due Judgment had reputation for other cities as well, should only have Stormwind
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepValue1`=75, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0 WHERE `entry`=7639;

-- Exorcising Terrordale had reputation for other cities as well, should only have Stormwind
UPDATE `quest_template` SET `RewRepFaction1`=72, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepValue1`=250, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0 WHERE `entry`=7640;

-- Scarlet Diversions should give Undercity reputation only
UPDATE `quest_template` SET `RewRepValue1`=250, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=5096;

-- Help for Mudsprocket gave 350 reputation to every Horde capital, should only give 10 reputation for Gadgetzan
UPDATE `quest_template` SET `RewRepValue1`=350, `RewRepFaction1`=369, `RewRepFaction2`=0, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue1`=10, `RewRepValue2`=0, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=11211;

-- Making Amends and War at Sea had hardcoded spillover reputation, but it is already handled in core
UPDATE `quest_template` SET `RewRepFaction1` = 87, `RewRepValue1` = -500, `RewRepFaction2`=577, `RewRepValue2` = 250, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=500, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=9266;
UPDATE `quest_template` SET `RewRepFaction1` = 87, `RewRepValue1` = -500, `RewRepFaction2`=369, `RewRepValue2` = 250, `RewRepFaction3`=0, `RewRepFaction4`=0, `RewRepFaction5`=0, `RewRepValue2`=500, `RewRepValue3`=0, `RewRepValue4`=0, `RewRepValue5`=0 WHERE `entry`=9268;

