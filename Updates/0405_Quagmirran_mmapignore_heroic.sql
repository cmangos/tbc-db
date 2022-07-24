-- =======================================================================
-- Add Ignore MMAP Extraflag to Quagmirran Heroic
-- =======================================================================
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00004000 WHERE entry = 19894;

