-- =======================================================================
-- Add Ignore MMAP Extraflag to Quagmirran
-- =======================================================================
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00004000 WHERE entry IN (17942);

