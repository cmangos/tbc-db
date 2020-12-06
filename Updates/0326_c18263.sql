-- Correct Stats for Nagrand Spawn Trigger 18263
-- Source: wotlk-db / trinitydb
-- https://gist.githubusercontent.com/Kinzcool/e81137dab3bc828631ada717f7da5159/raw/796cd141ede5c02299a55ecd3037cdd460b5944c/creaturedifficulty.sql
UPDATE `creature_template` SET `ModelId1` = 7950, `ModelId2` = 11686, `Faction` = 114, `ExtraFlags` = 64 WHERE `entry` = 18263; -- keep 64 incase they get killed somehow

