-- Remove aura 13787 from Bloodmaul Warlock c.19994
-- Now handled in ACID since creature addon is not suitable for auras without infinite duration
UPDATE creature_template_addon SET auras=NULL WHERE entry=19994;

