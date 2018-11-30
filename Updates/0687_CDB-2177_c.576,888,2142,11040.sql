-- These should engage in combat
-- Remove CREATURE_EXTRA_FLAG_NO_AGGRO_ON_SIGHT from c.576,888,2142,11040
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`&~2 WHERE `Entry` IN (
576, -- Watcher Ladimore
888, -- Watcher Dodds
2142, -- Watcher Callahan
11040 -- Watcher Brownell
);

