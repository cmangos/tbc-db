-- Deathknight Understudy
UPDATE creature_template SET MechanicImmuneMask=0 WHERE Entry=16803; -- remove charm immunity
-- add missing spells
-- source: Classic-DB
DELETE FROM creature_template_spells WHERE entry=16803;
INSERT INTO creature_template_spells (entry, spell1, spell2) VALUES
(16803, 355, 29061);

-- Sapphiron model data correction
-- source: CDB/WDB
UPDATE creature_model_info SET bounding_radius=0.77, combat_reach=22 WHERE modelid=16033;


