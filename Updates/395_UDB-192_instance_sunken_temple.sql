-- Updated NPC 5709 (Shade of Eranikus) in Sunken Temple: it is now unattackable
-- until Jammal'An is defeated
UPDATE creature_template SET UnitFlags=UnitFlags|256 WHERE Entry=5709;


