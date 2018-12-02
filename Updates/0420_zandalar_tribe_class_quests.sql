-- http://wowwiki.wikia.com/wiki/Jin%27rokh_the_Breaker
-- Warrior - Strength of Mount Mugamba, The Rage of Mugamba
-- Paragons of Power: The Vindicator's Armguards, The Vindicator's Belt, The Vindicator's Breastplate
UPDATE `quest_template` SET `RequiredClasses` = 1 WHERE `entry` IN (8041,8042,8043,8044,8058,8078,8079);
-- Paladin - The Heathen's Brand, The Hero's Brand
-- Paragons of Power: The Freethinker's Armguards, The Freethinker's Belt, The Freethinker's Breastplate
UPDATE `quest_template` SET `RequiredClasses` = 2 WHERE `entry` IN (8045,8046,8047,8048,8053,8054,8055);

-- http://wowwiki.wikia.com/wiki/Falthir_the_Sightless
-- Hunter - The Maelstrom's Tendril, Maelstrom's Wrath
-- Paragons of Power: The Predator's Bracers, The Predator's Belt, The Predator's Mantle
UPDATE `quest_template` SET `RequiredClasses` = 4 WHERE `entry` IN (8145,8146,8147,8148,8062,8066,8067);
-- Rogue - Zandalarian Shadow Talisman
-- Paragons of Power: The Madcap's Bracers, The Madcap's Mantle, The Madcap's Tunic
UPDATE `quest_template` SET `RequiredClasses` = 8 WHERE `entry` IN (8141,8142,8143,8144,8063,8072,8073);

-- http://wowwiki.wikia.com/wiki/Al%27tabim_the_All-Seeing
-- Priest - The Eye of Zuldazar, The All-Seeing Eye of Zuldazar
-- Paragons of Power: The Confessor's Wraps, The Confessor's Bindings, The Confessor's Mantle
UPDATE `quest_template` SET `RequiredClasses` = 16 WHERE `entry` IN (8049,8050,8051,8052,8061,8070,8071);
-- Mage - The Pebble of Kajaro, The Jewel of Kajaro
-- Paragons of Power: The Illusionist's Wraps, The Illusionist's Mantle, The Illusionist's Robes
UPDATE `quest_template` SET `RequiredClasses` = 128 WHERE `entry` IN (8101,8102,8103,8104,8060,8068,8069);
-- Warlock - Kezan's Taint, Kezan's Unstoppable Taint
-- Paragons of Power: The Demoniac's Wraps, The Demoniac's Mantle, The Demoniac's Robes
UPDATE `quest_template` SET `RequiredClasses` = 256 WHERE `entry` IN (8106,8107,8108,8109,8059,8076,8077);

-- http://wowwiki.wikia.com/wiki/Maywiki_of_Zuldazar
-- Druid - Enchanted South Seas Kelp, Pristine Enchanted South Seas Kelp
-- Paragons of Power: The Haruspex's Bracers, The Haruspex's Belt, The Haruspex's Tunic
UPDATE `quest_template` SET `RequiredClasses` = 1024 WHERE `entry` IN (8110,8111,8112,8113,8057,8064,8065);
-- Shaman - Vision of Voodress, The Unmarred Vision of Voodress
-- Paragons of Power: The Augur's Bracers, The Augur's Belt, The Augur's Hauberk
UPDATE `quest_template` SET `RequiredClasses` = 64 WHERE `entry` IN (8116,8117,8118,8119,8056,8074,8075);

