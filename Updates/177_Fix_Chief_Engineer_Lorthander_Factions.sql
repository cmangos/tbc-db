-- =========================================
-- Correct Chief Engineer Lorthander Faction - (He Was 35 Friendly For Some Reason)
-- =========================================
UPDATE `creature_template` SET `FactionAlliance`=1793, `FactionHorde`=1793 WHERE `entry` IN (18697);

