-- Add creature_spawn_entry for Shattered Hand Mage/Acolyte 19413,19415 & Ango'rosh Brute/Warlock 18119,19732
DELETE FROM `creature_spawn_entry` WHERE `guid` IN (64214,64215,64216,64217,64218,64219,64220,64221,64222,69320,69321,69322,69323,69324,69325,69326,69398,69399,69400,69401,69402,69403,69404,69714,70579,70580,70581,70582,70583,78965);
INSERT INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(69320, 19413), (69320, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69321, 19413), (69321, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69322, 19413), (69322, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69323, 19413), (69323, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69324, 19413), (69324, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69325, 19413), (69325, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69326, 19413), (69326, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(78965, 19413), (78965, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69398, 19413), (69398, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69399, 19413), (69399, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69400, 19413), (69400, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69401, 19413), (69401, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69402, 19413), (69402, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69403, 19413), (69403, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69404, 19413), (69404, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte
(69714, 19413), (69714, 19415), -- Shattered Hand Mage, Shattered Hand Acolyte

(64214, 18119), (64214, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64215, 18119), (64215, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64216, 18119), (64216, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64217, 18119), (64217, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64218, 18119), (64218, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64219, 18119), (64219, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64220, 18119), (64220, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64221, 18119), (64221, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(64222, 18119), (64222, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(70579, 18119), (70579, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(70580, 18119), (70580, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(70581, 18119), (70581, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(70582, 18119), (70582, 19732), -- Ango'rosh Brute, Ango'rosh Warlock
(70583, 18119), (70583, 19732); -- Ango'rosh Brute, Ango'rosh Warlock

-- Set `id` = 0 as identifier
UPDATE `creature` SET `id` = 0 WHERE `id` IN (19413,19415); -- Shattered Hand Mage [Entry 19413] / Shattered Hand Acolyte [Entry 19415]
UPDATE `creature` SET `id` = 0 WHERE `id` IN (18119,19732); -- Ango'rosh Brute [Entry 18119] / Ango'rosh Warlock [Entry 19732]

DELETE FROM `creature_addon` WHERE `guid` IN (70580,70581); -- aura specific, which was wrong (Ango'rosh Warlock without Demon Armor 13787) and is also handled by ACID

