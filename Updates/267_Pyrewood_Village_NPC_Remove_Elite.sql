-- ===========================================
-- Update Pyrewood Village NPC To Not Be Elite - Post 2.3 Nerf
-- ===========================================
UPDATE creature_template SET rank=0 WHERE entry IN (1892,1893,1896,3529,3531,3533);

