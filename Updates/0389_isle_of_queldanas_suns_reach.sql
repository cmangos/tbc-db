-- Sun's Reach - Isle of Quel'Danas updates

-- these NPCs start invisible and use a special transform spell which sets model/equipment depending on current Sun's Reach Reclaimation world state game events
-- Shattered Sun Marksman/Warrior
UPDATE creature SET equipment_id=0, modelid=0 WHERE id IN (24938,25115); -- 105 changed


