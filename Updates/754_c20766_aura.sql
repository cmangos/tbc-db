-- Remove aura 12550 from Bladespire Mystic c.20766
-- Now handled in ACID since creature addon is not suitable for auras without infinite duration
UPDATE creature_template_addon SET auras=NULL WHERE entry=20766;

