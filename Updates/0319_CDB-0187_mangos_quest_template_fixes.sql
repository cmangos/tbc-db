-- Adds XP reward for quest 1485 (Vile Familiars - Warlock)
-- Source: http://www.wowwiki.com/Quest:Vile_Familiars_(Warlock)?oldid=657735
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 48 WHERE `entry` = 1485; -- https://tbc.wowhead.com/quest=1485/vile-familiars
-- Quest 1499 (Vile Familiars - Warlock part2) has no race restriction but Horde even though
-- but is class restricted to non-warlocks. Fixes min level and add XP reward.
-- Source: http://www.wowwiki.com/Quest:Vile_Familiars_(Warlock_2)?oldid=657736
UPDATE `quest_template` SET `RequiredRaces` = 690, `RewMoneyMaxLevel` = 6 WHERE `entry` = 1499; -- says only orc and undead though, use tbc horde as used for 1485 currently

