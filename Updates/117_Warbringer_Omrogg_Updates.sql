-- =========================
-- Warbringer O'mrogg Update
-- ========================= 
UPDATE `creature_template` SET `ExtraFlags`='256' WHERE `Entry`='16809';
UPDATE `creature_template` SET `ExtraFlags`='256' WHERE `Entry`='20596';


-- Issues:
-- Warbringer O'mrogg is not immune to taunt as he should be.

-- Findings:
-- http://wowwiki.wikia.com/wiki/Warbringer_O'mrogg - "He is immune to taunt and growl."
-- In creature_template 'ExtraFlags' = 0

-- Actions:
-- Set ExtraFlags to '256' in creature_template

-- Resolution:
-- Warbringer O'mrogg now immune to taunt as intended. (Normal and Heroic)
















































