-- q.961 'Onu is meditating'
-- extra part for quest: q.944 'The Master's Glaive' 
-- this was first atempt for gossip menus (if source item is missing then this will come up)
-- unfortunately we are not able to reproduce this temp. mechanic ... so we do not need this extra q. to be able all the time!
DELETE FROM creature_questrelation WHERE id = 3616 AND quest = 961; 
DELETE FROM creature_involvedrelation WHERE id = 3616 AND quest = 961; 
-- Twilight Tome - rotation update
UPDATE gameobject SET rotation0 = -0.402262,  rotation1 = -0.303519, rotation2 = -0.679092, rotation3 = 0.533756 WHERE guid = 48529;
  

