-- Fixes type and faction for creature 14305 (Human Orphan) as it was
-- of type beast and faction prey when obviously it is humanoid and Stormwind (like other orphans)
UPDATE creature_template SET FactionAlliance=12, FactionHorde=12 WHERE entry=14305; -- Human Orphan

