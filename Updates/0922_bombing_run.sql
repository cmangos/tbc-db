-- Add dependencies for Bombing Run quests in Ogri'la (q.11023,11010,11102)


-- g.185861 is a static db spawn
-- it has linked trap g.185862
-- g.185862 has linked spell s.40181 which spawns c.23118
-- c.23118 casts s.40182 which spawns c.23119

-- Add Bombing Run: On Quest Accept s.40197 to Bombing Run quest templates
UPDATE quest_template SET SrcSpell=40197 WHERE entry IN(11023,11010,11102);

-- Throw Bomb s.40160 should only target Bombing Run Target Bunny c.23118
DELETE FROM spell_script_target WHERE entry=40160;
INSERT INTO spell_script_target (entry,type,targetEntry,inverseEffectMask) VALUES
(40160,1,23118,0);

-- Bombing Run Target Bunny 23118 - 40181
-- Bombing Run Explosion Bunny 23119 - 40182


