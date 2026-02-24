-- Use correct Frightening Shout spell for Fel Overseer 18796, 20652
-- https://github.com/cmangos/tbc-db/commit/a1a506929364ab4425ccf7499743986875f43389#diff-8344129e35190a1fe0366238d7f8994431be263a6cfe54e26376f0479744540bL21652-L21752
-- (1879601, 2, 29544, 0, -1, 1, 0, 100, 0, 6000, 16000, 21000, 28000, 'Fel Overseer - Frightening Shout - current'),
-- (2065201, 2, 29544, 0, -1, 1, 0, 100, 0, 6000, 16000, 21000, 28000, 'Fel Overseer - Frightening Shout - current'),
UPDATE `creature_spell_list` SET `SpellId` = 19134 WHERE `Id` IN (1879601,2065201) AND `SpellId` = 29544;

