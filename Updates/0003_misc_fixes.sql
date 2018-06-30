-- Spells need to proc on DOT tick taken, not dot tick done since they are on target, not owner and they proc themselves
DELETE FROM spell_proc_event WHERE entry IN(32065,35244,36659);
INSERT INTO spell_proc_event(entry,procFlags) VALUES
(32065,0x00080000),
(35244,0x00080000),
(36659,0x00080000);

-- new Shadowfiend level stats from TBC sniffs, 66, 67 and 70 sniffed, rest filled
UPDATE pet_levelstats SET mana=100 WHERE creature_entry IN(19668);
DELETE FROM pet_levelstats WHERE creature_entry IN(19668) AND level IN(66,67,68,69,70);
INSERT INTO pet_levelstats(creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) VALUES
('19668', '66', '1160', '2846', '100', '0', '0', '0', '0', '0'),
('19668', '67', '1193', '2933', '100', '0', '0', '0', '0', '0'),
('19668', '68', '1227', '3010', '100', '0', '0', '0', '0', '0'),
('19668', '69', '1261', '3095', '100', '0', '0', '0', '0', '0'),
('19668', '70', '1296', '3155', '100', '0', '0', '0', '0', '0');


-- Enchantress Volali 19251 - Remove Male Model Option
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 18775;

