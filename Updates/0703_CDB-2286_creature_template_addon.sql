-- Add missing auras in creature_template_addon (and sometimes even the template itself)

-- Add missing poison proc aura for NPC 5224 (Murk Slitherer)
UPDATE creature_template_addon SET auras='13299' WHERE entry=5224;

-- Add missing poison proc auras for NPC 2707 (Shadra)
DELETE FROM creature_template_addon WHERE entry=2707;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2707, 0, 0, 1, 16, 0, 0, '8601 13299');

-- Add missing damage shield aura for NPC 4397 (Mudrock Spikeshell)
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4397);
DELETE FROM creature_template_addon WHERE entry=4397;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (4397, 0, 0, 1, 16, 0, 0, '8393');

-- Add missing poison proc aura for NPC 3398 (Gesharahan)
DELETE FROM creature_template_addon WHERE entry=3398;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (3398, 0, 0, 1, 16, 0, 0, '10022');

-- Add missing poison proc aura for NPC 2541 (Lord Sakrasis)
DELETE FROM creature_template_addon WHERE entry=2541;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (2541, 0, 0, 1, 16, 0, 0, '10022');

-- Add missing poison proc aura for NPC 3383 (Southsea Cutthroat)
DELETE FROM creature_template_addon WHERE entry=3383;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (3383, 0, 0, 1, 16, 0, 0, '7276');

-- Add missing wandering plague proc auras for NPC 877 (Saltscale Forager)
DELETE FROM creature_template_addon WHERE entry=877;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (877, 0, 0, 1, 16, 0, 0, '7276');

-- Add missing wandering plague proc auras for NPC 1824 (Plague Lurker)
DELETE FROM creature_template_addon WHERE entry=1824;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (1824, 0, 0, 1, 16, 0, 0, '8247');

-- confirmed
-- Add missing thrash and stealth aura for NPC 2522 (Jaguero Stalker)
UPDATE creature_template_addon SET auras='6408 12787' WHERE entry=2522;

-- Add missing thrash aura for NPC 3652 (Trigore the Lasher)
DELETE FROM creature_template_addon WHERE entry=3652;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES (3652, 0, 0, 1, 16, 0, 0, '3417');

-- Add missing corrosive acid proc aura for NPCs 2655 (Green Sludge) and 6219 (Corrosive Lurker)
UPDATE creature_template_addon SET auras='9460' WHERE entry IN (2655, 6219);

-- Add missing poison proc auras for NPC 1986 (Webwood Spider)
UPDATE creature_template_addon SET auras='6752' WHERE entry=1986;

