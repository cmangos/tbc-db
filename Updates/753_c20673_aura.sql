-- Remove aura 19514 from Swiftwing Shredder c.20673
-- Now handled in ACID since creature addon is not suitable for auras without infinite duration
UPDATE creature_template_addon SET auras=NULL WHERE entry=20673;

